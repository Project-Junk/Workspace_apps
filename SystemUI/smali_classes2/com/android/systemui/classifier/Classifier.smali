.class public abstract Lcom/android/systemui/classifier/Classifier;
.super Ljava/lang/Object;
.source "Classifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/classifier/Classifier$InteractionType;
    }
.end annotation


# static fields
.field public static final BOUNCER_UNLOCK:I = 0x8

.field public static final GENERIC:I = 0x7

.field public static final LEFT_AFFORDANCE:I = 0x5

.field public static final NOTIFICATION_DISMISS:I = 0x1

.field public static final NOTIFICATION_DOUBLE_TAP:I = 0x3

.field public static final NOTIFICATION_DRAG_DOWN:I = 0x2

.field public static final PULSE_EXPAND:I = 0x9

.field public static final QUICK_SETTINGS:I = 0x0

.field public static final RIGHT_AFFORDANCE:I = 0x6

.field public static final UNLOCK:I = 0x4


# instance fields
.field protected mClassifierData:Lcom/android/systemui/classifier/ClassifierData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getTag()Ljava/lang/String;
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
