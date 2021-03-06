/*
 * sceneProcess.cpp
 *
 *  Created on: 2019年1月4日
 *      Author: jet
 */
#include "sceneProcess.hpp"
#include <stdio.h>

void CSceneProcess::start()
{
	memset(m_cnt,0,sizeof(m_cnt));
}

void CSceneProcess::detect(const Mat& frame, int chId)
{	
	struct timespec now;
	clock_gettime(CLOCK_MONOTONIC, &now);
	unsigned int us = now.tv_sec*1000000+now.tv_nsec/1000;
	*(unsigned int*)frame.data = us;

	if(m_cnt[chId] == 0)
		m_obj.InitSceneLock(frame);
	else
		m_obj.CalSceneLock(frame);

	if(!m_cnt[chId])
		m_cnt[chId]++;
}

void CSceneProcess::getResult(cv::Point2f & result)
{	
	result.x = m_obj.m_filterVel.x;
	result.y = m_obj.m_filterVel.y;

	//printf("result.x = %f ,result.y = %f  \n ",result.x,result.y);
	return ;
}



