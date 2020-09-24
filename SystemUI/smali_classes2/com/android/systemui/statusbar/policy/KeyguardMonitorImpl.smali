.class public Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardMonitorImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mCanSkipBouncer:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mKeyguardFadingAway:Z

.field private mKeyguardFadingAwayDelay:J

.field private mKeyguardFadingAwayDuration:J

.field private mKeyguardGoingAway:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLaunchTransitionFadingAway:Z

.field private mListening:Z

.field private mOccluded:Z

.field private mSecure:Z

.field private mShowing:Z

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mContext:Landroid/content/Context;

    .line 63
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 64
    new-instance p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl$1;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCurrentUser:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->updateCanSkipBouncerState()V

    return-void
.end method

.method private notifyKeyguardChanged()V
    .locals 1

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CusFj6pVztwBZlitsnMLA9Hx95I;->INSTANCE:Lcom/android/systemui/statusbar/policy/-$$Lambda$CusFj6pVztwBZlitsnMLA9Hx95I;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateCanSkipBouncerState()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCanSkipBouncer:Z

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V
    .locals 1

    const-string v0, "Callback must not be null. b/128895449"

    .line 75
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mListening:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 78
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mListening:Z

    .line 79
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCurrentUser:I

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->updateCanSkipBouncerState()V

    .line 81
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    :cond_0
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->addCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    return-void
.end method

.method public calculateGoingToFullShadeDelay()J
    .locals 4

    .line 176
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAwayDelay:J

    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAwayDuration:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public canSkipBouncer()Z
    .locals 0

    .line 113
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCanSkipBouncer:Z

    return p0
.end method

.method public getKeyguardFadingAwayDelay()J
    .locals 2

    .line 166
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAwayDelay:J

    return-wide v0
.end method

.method public getKeyguardFadingAwayDuration()J
    .locals 2

    .line 171
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAwayDuration:J

    return-wide v0
.end method

.method public isDeviceInteractive()Z
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p0

    return p0
.end method

.method public isKeyguardFadingAway()Z
    .locals 0

    .line 156
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAway:Z

    return p0
.end method

.method public isKeyguardGoingAway()Z
    .locals 0

    .line 161
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardGoingAway:Z

    return p0
.end method

.method public isLaunchTransitionFadingAway()Z
    .locals 0

    .line 189
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mLaunchTransitionFadingAway:Z

    return p0
.end method

.method public isOccluded()Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mOccluded:Z

    return p0
.end method

.method public isSecure()Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mSecure:Z

    return p0
.end method

.method public isShowing()Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mShowing:Z

    return p0
.end method

.method public notifyKeyguardDoneFading()V
    .locals 1

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAway:Z

    .line 151
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardGoingAway:Z

    return-void
.end method

.method public notifyKeyguardFadingAway(JJ)V
    .locals 1

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAway:Z

    .line 145
    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAwayDelay:J

    .line 146
    iput-wide p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAwayDuration:J

    return-void
.end method

.method public notifyKeyguardGoingAway(Z)V
    .locals 0

    .line 180
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardGoingAway:Z

    return-void
.end method

.method public notifyKeyguardState(ZZZ)V
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mShowing:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mSecure:Z

    if-ne v0, p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mOccluded:Z

    if-ne v0, p3, :cond_0

    return-void

    .line 118
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mShowing:Z

    .line 119
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mSecure:Z

    .line 120
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mOccluded:Z

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->notifyKeyguardChanged()V

    return-void
.end method

.method public onTrustChanged(I)V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->updateCanSkipBouncerState()V

    .line 127
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->notifyKeyguardChanged()V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V
    .locals 1

    const-string v0, "Callback must not be null. b/128895449"

    .line 88
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mListening:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 90
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mListening:Z

    .line 91
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 92
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    :cond_0
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    return-void
.end method

.method public setLaunchTransitionFadingAway(Z)V
    .locals 0

    .line 184
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mLaunchTransitionFadingAway:Z

    return-void
.end method
