.class public Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingActivity;
.super Lcom/coloros/systemui/common/settings/BaseSettingsActivity;
.source "SplitScreenSettingActivity.java"


# static fields
.field private static final ACTIVITY_NAME:Ljava/lang/String; = "com.coloros.systemui.stackdivider.setting.SplitScreenSettingActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/coloros/systemui/common/settings/BaseSettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/coloros/systemui/common/settings/BaseSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-static {}, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->newInstance()Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingActivity;->switchToFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method
