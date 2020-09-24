.class public Lcom/coloros/systemui/common/settings/others/ThemeBundleUtils;
.super Ljava/lang/Object;
.source "ThemeBundleUtils.java"


# static fields
.field private static sImmersiveTheme:Z = false

.field private static sNavSettingBackgroundWhite:Z = true

.field private static sNavigationBarBackground:I = 0x0

.field private static sStatusWhite:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImmersiveTheme()Z
    .locals 1

    .line 38
    sget-boolean v0, Lcom/coloros/systemui/common/settings/others/ThemeBundleUtils;->sImmersiveTheme:Z

    return v0
.end method

.method public static getNavSettingBackgroundWhite()Z
    .locals 1

    .line 50
    sget-boolean v0, Lcom/coloros/systemui/common/settings/others/ThemeBundleUtils;->sNavSettingBackgroundWhite:Z

    return v0
.end method

.method public static getNavigationBarBackground()I
    .locals 1

    .line 46
    sget v0, Lcom/coloros/systemui/common/settings/others/ThemeBundleUtils;->sNavigationBarBackground:I

    return v0
.end method

.method public static getStatusWhite()Z
    .locals 1

    .line 42
    sget-boolean v0, Lcom/coloros/systemui/common/settings/others/ThemeBundleUtils;->sStatusWhite:Z

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/settings/others/ThemeBundleUtils;->sImmersiveTheme:Z

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/common/settings/others/ThemeBundleUtils;->sStatusWhite:Z

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060274

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/coloros/systemui/common/settings/others/ThemeBundleUtils;->sNavigationBarBackground:I

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    sput-boolean p0, Lcom/coloros/systemui/common/settings/others/ThemeBundleUtils;->sNavSettingBackgroundWhite:Z

    return-void
.end method
