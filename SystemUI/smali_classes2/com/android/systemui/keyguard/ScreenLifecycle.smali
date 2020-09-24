.class public Lcom/android/systemui/keyguard/ScreenLifecycle;
.super Lcom/android/systemui/keyguard/Lifecycle;
.source "ScreenLifecycle.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/keyguard/Lifecycle<",
        "Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;",
        ">;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final SCREEN_OFF:I = 0x0

.field public static final SCREEN_ON:I = 0x2

.field public static final SCREEN_TURNING_OFF:I = 0x3

.field public static final SCREEN_TURNING_ON:I = 0x1


# instance fields
.field private mScreenState:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/keyguard/Lifecycle;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    return-void
.end method

.method private setScreenState(I)V
    .locals 2

    .line 77
    iput p1, p0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    const-wide/16 v0, 0x1000

    const-string p0, "screenState"

    .line 78
    invoke-static {v0, v1, p0, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public dispatchScreenTurnedOff()V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->setScreenState(I)V

    .line 67
    sget-object v0, Lcom/android/systemui/keyguard/-$$Lambda$K8LiTMkPknhhclqjA2eboLxaGEU;->INSTANCE:Lcom/android/systemui/keyguard/-$$Lambda$K8LiTMkPknhhclqjA2eboLxaGEU;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dispatchScreenTurnedOn()V
    .locals 1

    const/4 v0, 0x2

    .line 56
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->setScreenState(I)V

    .line 57
    sget-object v0, Lcom/android/systemui/keyguard/-$$Lambda$n4aPxVrHdTzFo5NE6H_ILivOadQ;->INSTANCE:Lcom/android/systemui/keyguard/-$$Lambda$n4aPxVrHdTzFo5NE6H_ILivOadQ;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dispatchScreenTurningOff()V
    .locals 1

    const/4 v0, 0x3

    .line 61
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->setScreenState(I)V

    .line 62
    sget-object v0, Lcom/android/systemui/keyguard/-$$Lambda$DmSZzOb4vxXoGU7unAMsJYIcFwE;->INSTANCE:Lcom/android/systemui/keyguard/-$$Lambda$DmSZzOb4vxXoGU7unAMsJYIcFwE;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dispatchScreenTurningOn()V
    .locals 1

    const/4 v0, 0x1

    .line 51
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->setScreenState(I)V

    .line 52
    sget-object v0, Lcom/android/systemui/keyguard/-$$Lambda$w9PiqN50NESCg48fJRhE_dJBSdc;->INSTANCE:Lcom/android/systemui/keyguard/-$$Lambda$w9PiqN50NESCg48fJRhE_dJBSdc;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "ScreenLifecycle:"

    .line 72
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mScreenState="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getScreenState()I
    .locals 0

    .line 47
    iget p0, p0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    return p0
.end method
