.class public interface abstract Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEventOrBuilder;
.super Ljava/lang/Object;
.source "TouchAnalyticsProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SensorEventOrBuilder"
.end annotation


# virtual methods
.method public abstract getTimeOffsetNanos()J
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract getType()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;
.end method

.method public abstract getZvalues(I)F
.end method

.method public abstract getZvaluesCount()I
.end method

.method public abstract getZvaluesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasTimeOffsetNanos()Z
.end method

.method public abstract hasTimestamp()Z
.end method

.method public abstract hasType()Z
.end method
