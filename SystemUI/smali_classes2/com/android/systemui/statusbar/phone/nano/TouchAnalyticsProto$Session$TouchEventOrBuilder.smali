.class public interface abstract Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEventOrBuilder;
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
    name = "TouchEventOrBuilder"
.end annotation


# virtual methods
.method public abstract getAction()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Action;
.end method

.method public abstract getActionIndex()I
.end method

.method public abstract getPointers(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;
.end method

.method public abstract getPointersCount()I
.end method

.method public abstract getPointersList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPointersOrBuilder(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$PointerOrBuilder;
.end method

.method public abstract getPointersOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$PointerOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRemovedBoundingBox()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;
.end method

.method public abstract getRemovedBoundingBoxOrBuilder()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$BoundingBoxOrBuilder;
.end method

.method public abstract getRemovedRedacted()Z
.end method

.method public abstract getTimeOffsetNanos()J
.end method

.method public abstract hasAction()Z
.end method

.method public abstract hasActionIndex()Z
.end method

.method public abstract hasRemovedBoundingBox()Z
.end method

.method public abstract hasRemovedRedacted()Z
.end method

.method public abstract hasTimeOffsetNanos()Z
.end method
