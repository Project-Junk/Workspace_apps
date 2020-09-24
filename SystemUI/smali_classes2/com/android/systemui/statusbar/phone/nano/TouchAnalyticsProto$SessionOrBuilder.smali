.class public interface abstract Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$SessionOrBuilder;
.super Ljava/lang/Object;
.source "TouchAnalyticsProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SessionOrBuilder"
.end annotation


# virtual methods
.method public abstract getBuild()Ljava/lang/String;
.end method

.method public abstract getBuildBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getDeviceIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getDurationMillis()J
.end method

.method public abstract getPhoneEvents(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
.end method

.method public abstract getPhoneEventsCount()I
.end method

.method public abstract getPhoneEventsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPhoneEventsOrBuilder(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEventOrBuilder;
.end method

.method public abstract getPhoneEventsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEventOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResult()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;
.end method

.method public abstract getSensorEvents(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;
.end method

.method public abstract getSensorEventsCount()I
.end method

.method public abstract getSensorEventsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSensorEventsOrBuilder(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEventOrBuilder;
.end method

.method public abstract getSensorEventsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEventOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStartTimestampMillis()J
.end method

.method public abstract getTouchAreaHeight()I
.end method

.method public abstract getTouchAreaWidth()I
.end method

.method public abstract getTouchEvents(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;
.end method

.method public abstract getTouchEventsCount()I
.end method

.method public abstract getTouchEventsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTouchEventsOrBuilder(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEventOrBuilder;
.end method

.method public abstract getTouchEventsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEventOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getType()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;
.end method

.method public abstract hasBuild()Z
.end method

.method public abstract hasDeviceId()Z
.end method

.method public abstract hasDurationMillis()Z
.end method

.method public abstract hasResult()Z
.end method

.method public abstract hasStartTimestampMillis()Z
.end method

.method public abstract hasTouchAreaHeight()Z
.end method

.method public abstract hasTouchAreaWidth()Z
.end method

.method public abstract hasType()Z
.end method
