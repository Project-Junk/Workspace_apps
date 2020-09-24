.class public Lcom/coloros/settings/adaptor/ConfirmConvertToFbeAdaptor;
.super Lcom/color/injector/adaptor/ClassAdaptor;
.source "ConfirmConvertToFbeAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/color/injector/adaptor/ClassAdaptor<",
        "Lcom/android/settings/applications/ConfirmConvertToFbe;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDevelopmentFeature:Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/color/injector/adaptor/ClassAdaptor;-><init>()V

    .line 30
    const-class v0, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;

    invoke-static {v0}, Lcom/color/injector/adaptor/b;->a(Ljava/lang/Class;)Lcom/color/injector/adaptor/g;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;

    iput-object v0, p0, Lcom/coloros/settings/adaptor/ConfirmConvertToFbeAdaptor;->mDevelopmentFeature:Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;

    return-void
.end method


# virtual methods
.method public getLayoutResID(I)I
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ConfirmConvertToFbeAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ConfirmConvertToFbeAdaptor;->mDevelopmentFeature:Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->getConvertFbeConfirmLayoutResID(I)I

    move-result p1

    return p1
.end method

.method public onCreateView(Landroid/view/View;)V
    .locals 2

    .line 41
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ConfirmConvertToFbeAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/ConfirmConvertToFbeAdaptor;->mDevelopmentFeature:Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/ConfirmConvertToFbeAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1, v1}, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->onCreateView(Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    return-void
.end method
