.class public Lcom/coloros/settings/adaptor/ChooseAccountPreferenceControllerAdaptor;
.super Lcom/color/injector/adaptor/ClassAdaptor;
.source "ChooseAccountPreferenceControllerAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/color/injector/adaptor/ClassAdaptor<",
        "Lcom/android/settings/accounts/ChooseAccountPreferenceController;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountFeature:Lcom/coloros/settings/feature/accounts/AccountFeature;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/color/injector/adaptor/ClassAdaptor;-><init>()V

    .line 31
    const-class v0, Lcom/coloros/settings/feature/accounts/AccountFeature;

    invoke-static {v0}, Lcom/color/injector/adaptor/b;->a(Ljava/lang/Class;)Lcom/color/injector/adaptor/g;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/accounts/AccountFeature;

    iput-object v0, p0, Lcom/coloros/settings/adaptor/ChooseAccountPreferenceControllerAdaptor;->mAccountFeature:Lcom/coloros/settings/feature/accounts/AccountFeature;

    return-void
.end method


# virtual methods
.method public getDrawableForPreferenceAccount(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ChooseAccountPreferenceControllerAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ChooseAccountPreferenceControllerAdaptor;->mAccountFeature:Lcom/coloros/settings/feature/accounts/AccountFeature;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/feature/accounts/AccountFeature;->getDrawableForPreferenceAccount(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ChooseAccountPreferenceControllerAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ChooseAccountPreferenceControllerAdaptor;->mAccountFeature:Lcom/coloros/settings/feature/accounts/AccountFeature;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/feature/accounts/AccountFeature;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public interceptSingleProvider()Z
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ChooseAccountPreferenceControllerAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ChooseAccountPreferenceControllerAdaptor;->mAccountFeature:Lcom/coloros/settings/feature/accounts/AccountFeature;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/accounts/AccountFeature;->interceptSingleProvider()Z

    move-result v0

    return v0
.end method
