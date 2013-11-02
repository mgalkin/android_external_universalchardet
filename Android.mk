# Copyright (C) 2008 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    src/base/CharDistribution.cpp \
    src/base/JpCntx.cpp \
    src/base/LangBulgarianModel.cpp \
    src/base/LangCyrillicModel.cpp \
    src/base/LangGreekModel.cpp \
    src/base/LangHebrewModel.cpp \
    src/base/LangHungarianModel.cpp \
    src/base/LangThaiModel.cpp \
    src/base/nsBig5Prober.cpp \
    src/base/nsCharSetProber.cpp \
    src/base/nsEscCharsetProber.cpp \
    src/base/nsEscSM.cpp \
    src/base/nsEUCJPProber.cpp \
    src/base/nsEUCKRProber.cpp \
    src/base/nsEUCTWProber.cpp \
    src/base/nsGB2312Prober.cpp \
    src/base/nsHebrewProber.cpp \
    src/base/nsLatin1Prober.cpp \
    src/base/nsMBCSGroupProber.cpp \
    src/base/nsMBCSSM.cpp \
    src/base/nsSBCharSetProber.cpp \
    src/base/nsSBCSGroupProber.cpp \
    src/base/nsSJISProber.cpp \
    src/base/nsUniversalDetector.cpp \
    src/base/nsUTF8Prober.cpp \
    src/base/universalchardet.cpp \

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src/base $(LOCAL_PATH)/include
LOCAL_LDLIBS += -lpthread
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := libuniversalchardet

include $(BUILD_SHARED_LIBRARY)