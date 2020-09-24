.class public Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;
.super Lcom/color/injector/adaptor/g;
.source "DevelopmentSettingFeature.java"


# annotations
.annotation runtime Lcom/color/injector/a/a;
    a = "development_setting"
.end annotation


# static fields
.field public static final FEATURE_FLAG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DevelopmentSettingFeature"


# instance fields
.field private mRunningServiceDetailsModule:Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/color/injector/adaptor/g;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance p1, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;

    invoke-direct {p1}, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->mRunningServiceDetailsModule:Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;

    return-void
.end method

.method static synthetic lambda$onCreateView$0(Landroidx/fragment/app/Fragment;Landroid/view/View;)V
    .locals 0

    .line 165
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method


# virtual methods
.method public addProcessesHeader(Lcom/android/settings/applications/RunningServiceDetails;)Z
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->mRunningServiceDetailsModule:Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->addProcessesHeader(Lcom/android/settings/applications/RunningServiceDetails;)Z

    move-result p1

    return p1
.end method

.method public addSeparatorHeader(Lcom/android/settings/applications/RunningServiceDetails;)V
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->mRunningServiceDetailsModule:Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->addSeparatorHeader(Lcom/android/settings/applications/RunningServiceDetails;)V

    return-void
.end method

.method public addServiceDetailsView(Lcom/android/settings/applications/RunningServiceDetails$a;Lcom/android/settings/applications/RunningServiceDetails;)V
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->mRunningServiceDetailsModule:Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->addServiceDetailsView(Lcom/android/settings/applications/RunningServiceDetails$a;Lcom/android/settings/applications/RunningServiceDetails;)V

    return-void
.end method

.method public addServicesHeader(Lcom/android/settings/applications/RunningServiceDetails;)Z
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->mRunningServiceDetailsModule:Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->addServicesHeader(Lcom/android/settings/applications/RunningServiceDetails;)Z

    move-result p1

    return p1
.end method

.method public getConvertFbeConfirmLayoutResID(I)I
    .locals 1

    .line 144
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const p1, 0x7f0d007c

    return p1
.end method

.method public getConvertFbeLayoutResID(I)I
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const p1, 0x7f0d007e

    return p1
.end method

.method public getLayoutResID(I)I
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->mRunningServiceDetailsModule:Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->getLayoutResID(I)I

    move-result p1

    return p1
.end method

.method public getServiceDetailLayoutResID(I)I
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->mRunningServiceDetailsModule:Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->getServiceDetailLayoutResID(I)I

    move-result p1

    return p1
.end method

.method public getServiceDetailProcessLayoutResID(I)I
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->mRunningServiceDetailsModule:Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->getServiceDetailProcessLayoutResID(I)I

    move-result p1

    return p1
.end method

.method public onCreate(Lcom/android/settings/applications/RunningServiceDetails;)V
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->mRunningServiceDetailsModule:Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->onCreate(Lcom/android/settings/applications/RunningServiceDetails;)V

    return-void
.end method

.method public onCreateView(Landroid/view/View;Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 151
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    instance-of v0, p2, Lcom/android/settings/applications/RunningServiceDetails;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->mRunningServiceDetailsModule:Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;

    check-cast p2, Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v0, p2, p1}, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->onCreateView(Lcom/android/settings/applications/RunningServiceDetails;Landroid/view/View;)V

    return-void

    :cond_1
    const v0, 0x7f0a070a

    .line 160
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Toolbar;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 162
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/widget/Toolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/settings/utils/al;->ag(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v0, v1, v0, v0}, Landroid/widget/Toolbar;->setPadding(IIII)V

    .line 164
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentActivity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 165
    new-instance v1, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$DevelopmentSettingFeature$kMunEZndI1N0zMy4qwGSgRTkZAs;

    invoke-direct {v1, p2}, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$DevelopmentSettingFeature$kMunEZndI1N0zMy4qwGSgRTkZAs;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    :cond_2
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 169
    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 171
    :cond_3
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    .line 172
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    return-void
.end method

.method public removeHead(Lcom/android/settings/applications/RunningServiceDetails;)V
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->mRunningServiceDetailsModule:Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->removeHead(Lcom/android/settings/applications/RunningServiceDetails;)V

    return-void
.end method

.method public setListViewStyle(Landroid/view/View;Lcom/android/settings/applications/RunningServiceDetails;)V
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->mRunningServiceDetailsModule:Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->setListViewStyle(Landroid/view/View;Lcom/android/settings/applications/RunningServiceDetails;)V

    return-void
.end method

.method public setPositionAndSize(II)V
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->mRunningServiceDetailsModule:Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->setPositionAndSize(II)V

    return-void
.end method

.method public setRootLayoutPara(Landroid/view/View;Lcom/android/settings/applications/RunningServiceDetails;)V
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;->mRunningServiceDetailsModule:Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->setRootLayoutPara(Landroid/view/View;Lcom/android/settings/applications/RunningServiceDetails;)V

    return-void
.end method
