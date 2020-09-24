.class public Lcom/color/support/util/ColorContextUtil;
.super Ljava/lang/Object;
.source "ColorContextUtil.java"


# static fields
.field private static final METADATA_STYLE_TITLE:Ljava/lang/String; = "color.support.options"

.field private static final METADATA_STYLE_VALUE:Ljava/lang/String; = "true"

.field private static final TAG:Ljava/lang/String; = "ColorContextUtil"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/color/support/util/ColorContextUtil;->mContext:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lcom/color/support/util/ColorContextUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 56
    iput-object p1, p0, Lcom/color/support/util/ColorContextUtil;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static getAttrColor(Landroid/content/Context;I)I
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-static {p0, p1, v0}, Lcom/color/support/util/ColorContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static getAttrColor(Landroid/content/Context;II)I
    .locals 2

    const/4 v0, 0x1

    .line 156
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 158
    invoke-virtual {p0, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 159
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static getOppoThemeContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    .line 101
    invoke-static {p0}, Lcom/color/support/util/ColorContextUtil;->isOppoStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, Lcolor/support/v7/appcompat/R$style;->Theme_ColorSupport:I

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static getResId(Landroid/content/Context;I)I
    .locals 2

    .line 114
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 116
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method

.method public static isColorStyle(Landroid/content/Context;)Z
    .locals 3

    .line 127
    :try_start_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    .line 129
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    .line 128
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 130
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    const-string v1, "true"

    .line 131
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "color.support.options"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorContextUtil"

    invoke-static {v1, v0}, Lcom/color/support/util/ColorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_0
    invoke-static {p0}, Lcom/color/support/util/ColorContextUtil;->isOppoStyle(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isOppoStyle(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget-object v1, Lcolor/support/v7/appcompat/R$styleable;->OppoTheme:[I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 88
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->OppoTheme_isOppoTheme:I

    invoke-virtual {p0, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 89
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return v0
.end method


# virtual methods
.method public isOppoStyle()Z
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/color/support/util/ColorContextUtil;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/color/support/util/ColorContextUtil;->isOppoStyle(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 67
    iput-object p1, p0, Lcom/color/support/util/ColorContextUtil;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method
