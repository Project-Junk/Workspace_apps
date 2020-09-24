.class public Lcom/coloros/systemui/statusbar/phone/LightBarControllerEx;
.super Ljava/lang/Object;
.source "LightBarControllerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/statusbar/phone/LightBarControllerEx$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LightStatusBarController"

.field private static final sLightBarControllerEx:Lcom/coloros/systemui/statusbar/phone/LightBarControllerEx;


# instance fields
.field private mCallback:Lcom/coloros/systemui/statusbar/phone/LightBarControllerEx$Callback;

.field private mIsLight:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/coloros/systemui/statusbar/phone/LightBarControllerEx;

    invoke-direct {v0}, Lcom/coloros/systemui/statusbar/phone/LightBarControllerEx;-><init>()V

    sput-object v0, Lcom/coloros/systemui/statusbar/phone/LightBarControllerEx;->sLightBarControllerEx:Lcom/coloros/systemui/statusbar/phone/LightBarControllerEx;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/phone/LightBarControllerEx;->mIsLight:Z

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/statusbar/phone/LightBarControllerEx;
    .locals 1

    .line 24
    sget-object v0, Lcom/coloros/systemui/statusbar/phone/LightBarControllerEx;->sLightBarControllerEx:Lcom/coloros/systemui/statusbar/phone/LightBarControllerEx;

    return-object v0
.end method


# virtual methods
.method public isNavIconLight()Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/phone/LightBarControllerEx;->mIsLight:Z

    return p0
.end method

.method public setCallback(Lcom/coloros/systemui/statusbar/phone/LightBarControllerEx$Callback;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/phone/LightBarControllerEx;->mCallback:Lcom/coloros/systemui/statusbar/phone/LightBarControllerEx$Callback;

    return-void
.end method

.method public setNavIconLight(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/phone/LightBarControllerEx;->mIsLight:Z

    .line 36
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/LightBarControllerEx;->mCallback:Lcom/coloros/systemui/statusbar/phone/LightBarControllerEx$Callback;

    if-eqz p0, :cond_0

    .line 37
    invoke-interface {p0}, Lcom/coloros/systemui/statusbar/phone/LightBarControllerEx$Callback;->updateNavIconLight()V

    :cond_0
    return-void
.end method
