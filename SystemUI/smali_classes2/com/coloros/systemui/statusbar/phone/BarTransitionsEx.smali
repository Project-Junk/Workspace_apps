.class public Lcom/coloros/systemui/statusbar/phone/BarTransitionsEx;
.super Ljava/lang/Object;
.source "BarTransitionsEx.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BarTransitionsEx"

.field private static final sBarTransitionsEx:Lcom/coloros/systemui/statusbar/phone/BarTransitionsEx;


# instance fields
.field private mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

.field private mForceTransParent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/coloros/systemui/statusbar/phone/BarTransitionsEx;

    invoke-direct {v0}, Lcom/coloros/systemui/statusbar/phone/BarTransitionsEx;-><init>()V

    sput-object v0, Lcom/coloros/systemui/statusbar/phone/BarTransitionsEx;->sBarTransitionsEx:Lcom/coloros/systemui/statusbar/phone/BarTransitionsEx;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/phone/BarTransitionsEx;->mForceTransParent:Z

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/statusbar/phone/BarTransitionsEx;
    .locals 1

    .line 29
    sget-object v0, Lcom/coloros/systemui/statusbar/phone/BarTransitionsEx;->sBarTransitionsEx:Lcom/coloros/systemui/statusbar/phone/BarTransitionsEx;

    return-object v0
.end method


# virtual methods
.method public getForceTransParent(Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;)Z
    .locals 1

    .line 37
    instance-of v0, p1, Lcom/coloros/systemui/statusbar/phone/ColorBarBackgroundDrawable;

    if-eqz v0, :cond_0

    .line 38
    check-cast p1, Lcom/coloros/systemui/statusbar/phone/ColorBarBackgroundDrawable;

    .line 39
    invoke-virtual {p1}, Lcom/coloros/systemui/statusbar/phone/ColorBarBackgroundDrawable;->isNavBarDrawable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/phone/BarTransitionsEx;->mForceTransParent:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setBarBackgroundDrawable(Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/phone/BarTransitionsEx;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    return-void
.end method

.method public setForceTransparentBackground(Z)V
    .locals 3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setForceTransparentBackground mForceTransParent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/statusbar/phone/BarTransitionsEx;->mForceTransParent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    const-string v2, "BarTransitionsEx"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/phone/BarTransitionsEx;->mForceTransParent:Z

    if-eq v0, p1, :cond_0

    .line 49
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/phone/BarTransitionsEx;->mForceTransParent:Z

    .line 50
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/BarTransitionsEx;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    if-eqz p0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
