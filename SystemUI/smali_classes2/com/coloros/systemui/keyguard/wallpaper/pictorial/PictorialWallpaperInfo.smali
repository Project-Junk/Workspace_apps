.class public Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;
.super Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;
.source "PictorialWallpaperInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$SkipStrategy;,
        Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$UriDeserializer;,
        Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$UriSerializer;,
        Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;
    }
.end annotation


# static fields
.field public static final DEFINE_INVALID_PIC_ID:Ljava/lang/String; = "-1"

.field public static final INVALID_ID:I = -0x1

.field public static final NULL:Ljava/lang/String; = "null"

.field public static final PICTORIAL_TYPE_AD:I = 0x1

.field public static final PICTORIAL_TYPE_AD_INCREMENT:I = 0x2

.field public static final PICTORIAL_TYPE_DYNAMIC:I = 0x5

.field public static final PICTORIAL_TYPE_NORMAL:I = 0x0

.field public static final PICTORIAL_TYPE_NORMAL_INCREMENT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PictorialKeyguardWallpaperInfo"


# instance fields
.field private mClickIntent:Landroid/content/Intent;

.field private mClickText:Ljava/lang/String;

.field private mContentColor:I

.field private mContentSize:I

.field private mContentString:Ljava/lang/String;

.field private mCopyrightDesc:Ljava/lang/String;

.field private mDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDeepLink:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mFileUri:Landroid/net/Uri;

.field private mGroupId:Ljava/lang/String;

.field private mGroupType:I

.field private mImageId:Ljava/lang/String;

.field private mImageType:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;

.field private mInstantAppLink:Ljava/lang/String;

.field private mMoreButtonBg:Landroid/graphics/drawable/Drawable;

.field private mMoreButtonBgRes:I

.field private mMoreButtonColor:I

.field private mMoreButtonMarginLeft:I

.field private mMoreButtonPressedBg:Landroid/graphics/drawable/Drawable;

.field private mMoreButtonPressedBgRes:I

.field private mMoreButtonSize:I

.field private mNextWallPaper:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

.field private mTitle:Ljava/lang/String;

.field private mTitleColor:I

.field private mTitleSize:I

.field private mWallpaperDrawable:Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

.field private mWebUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;-><init>()V

    .line 76
    sget-object v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;->IDLE:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mImageType:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mDataMap:Ljava/util/Map;

    const/4 v0, 0x1

    .line 92
    iput v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mType:I

    return-void
.end method

.method public constructor <init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;-><init>()V

    .line 76
    sget-object v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;->IDLE:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mImageType:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mDataMap:Ljava/util/Map;

    const/4 v0, 0x1

    .line 97
    iput v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mType:I

    .line 98
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->copyToFrom(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)V

    return-void
.end method

.method public static getDrawableID(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p0, :cond_0

    const-string p0, "Keyguard"

    const-string v1, "PictorialKeyguardWallpaperInfo"

    const-string v2, "getDrawableID path is null, why?"

    .line 364
    invoke-static {p0, v1, v2}, Lcom/coloros/common/util/LogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const-string v1, "pictorial-inlay-resID:"

    .line 367
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    .line 368
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 370
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    return v0
.end method


# virtual methods
.method public copyToFrom(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)V
    .locals 1

    .line 102
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setColor(Ljava/lang/Integer;)Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;

    .line 103
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getImageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setImageId(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setGroupId(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getGroupType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setGroupType(I)V

    .line 106
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getFileUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setFileUri(Landroid/net/Uri;)V

    .line 107
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getClickText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setClickText(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getTextTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setTextTitle(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setTextContent(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getWebUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setWebUrl(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getDeepLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setDeepLink(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getInstantAppLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setInstantAppLink(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setFilePath(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getCopyrightDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setCopyrightDesc(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getTitleSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setTitleSize(I)V

    .line 116
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getTitleColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setTitleColor(I)V

    .line 117
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getContentSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setContentSize(I)V

    .line 118
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getContentColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setContentColor(I)V

    .line 119
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getMoreButtonSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setMoreButtonSize(I)V

    .line 120
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getMoreButtonColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setMoreButtonColor(I)V

    .line 121
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getMoreButtonBgRes()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setMoreButtonBgRes(I)V

    .line 122
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getMoreButtonBg()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setMoreButtonBg(Landroid/graphics/drawable/Drawable;)V

    .line 123
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getMoreButtonPressedBgRes()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setMoreButtonBgRes(I)V

    .line 124
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getMoreButtonPressedBg()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setMoreButtonPressedBg(Landroid/graphics/drawable/Drawable;)V

    .line 125
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getMoreButtonMarginLeft()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setMoreButtonMarginLeft(I)V

    .line 126
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getPreloadWallpaper()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setNextWallpaper(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)V

    .line 127
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getWallpaperDrawable()Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setWallpaperDrawable(Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;)V

    .line 128
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getClickDetailIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setClickDetailIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public copyWallpaperDrawable(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 394
    :cond_0
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getWallpaperDrawable()Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 398
    :cond_1
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getWallpaperDrawable()Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    .line 399
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setWallpaperDrawable(Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;)V

    return-void
.end method

.method public getClickDetailIntent()Landroid/content/Intent;
    .locals 0

    .line 322
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mClickIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getClickText()Ljava/lang/String;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mClickText:Ljava/lang/String;

    return-object p0
.end method

.method public getContentColor()I
    .locals 0

    .line 246
    iget p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mContentColor:I

    return p0
.end method

.method public getContentSize()I
    .locals 0

    .line 238
    iget p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mContentSize:I

    return p0
.end method

.method public getCopyrightDesc()Ljava/lang/String;
    .locals 0

    .line 330
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mCopyrightDesc:Ljava/lang/String;

    return-object p0
.end method

.method public getDataMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 343
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mDataMap:Ljava/util/Map;

    return-object p0
.end method

.method public getDeepLink()Ljava/lang/String;
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mDeepLink:Ljava/lang/String;

    return-object p0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getFileUri()Landroid/net/Uri;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mFileUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mGroupId:Ljava/lang/String;

    return-object p0
.end method

.method public getGroupType()I
    .locals 0

    .line 148
    iget p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mGroupType:I

    return p0
.end method

.method public getImageId()Ljava/lang/String;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mImageId:Ljava/lang/String;

    return-object p0
.end method

.method public getInstantAppLink()Ljava/lang/String;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mInstantAppLink:Ljava/lang/String;

    return-object p0
.end method

.method public getMoreButtonBg()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mMoreButtonBg:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getMoreButtonBgRes()I
    .locals 0

    .line 254
    iget p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mMoreButtonBgRes:I

    return p0
.end method

.method public getMoreButtonColor()I
    .locals 0

    .line 294
    iget p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mMoreButtonColor:I

    return p0
.end method

.method public getMoreButtonMarginLeft()I
    .locals 0

    .line 302
    iget p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mMoreButtonMarginLeft:I

    return p0
.end method

.method public getMoreButtonPressedBg()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mMoreButtonPressedBg:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getMoreButtonPressedBgRes()I
    .locals 0

    .line 262
    iget p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mMoreButtonPressedBgRes:I

    return p0
.end method

.method public getMoreButtonSize()I
    .locals 0

    .line 286
    iget p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mMoreButtonSize:I

    return p0
.end method

.method public getPreloadWallpaper()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mNextWallPaper:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    return-object p0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mContentString:Ljava/lang/String;

    return-object p0
.end method

.method public getTextTitle()Ljava/lang/String;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getTitleColor()I
    .locals 0

    .line 230
    iget p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mTitleColor:I

    return p0
.end method

.method public getTitleSize()I
    .locals 0

    .line 222
    iget p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mTitleSize:I

    return p0
.end method

.method public getWallpaperDrawable()Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mWallpaperDrawable:Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    return-object p0
.end method

.method public getWallpaperType()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;
    .locals 0

    .line 351
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mImageType:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;

    return-object p0
.end method

.method public getWebUrl()Ljava/lang/String;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mWebUrl:Ljava/lang/String;

    return-object p0
.end method

.method public isAd()Z
    .locals 0

    .line 326
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialUtils;->isAdImage(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)Z

    move-result p0

    return p0
.end method

.method public setClickDetailIntent(Landroid/content/Intent;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mClickIntent:Landroid/content/Intent;

    return-void
.end method

.method public setClickText(Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mClickText:Ljava/lang/String;

    return-void
.end method

.method public setContentColor(I)V
    .locals 0

    .line 250
    iput p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mContentColor:I

    return-void
.end method

.method public setContentSize(I)V
    .locals 0

    .line 242
    iput p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mContentSize:I

    return-void
.end method

.method public setCopyrightDesc(Ljava/lang/String;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mCopyrightDesc:Ljava/lang/String;

    return-void
.end method

.method public setDataMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 339
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mDataMap:Ljava/util/Map;

    return-void
.end method

.method public setDeepLink(Ljava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mDeepLink:Ljava/lang/String;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public setFileUri(Landroid/net/Uri;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mFileUri:Landroid/net/Uri;

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mGroupId:Ljava/lang/String;

    return-void
.end method

.method public setGroupType(I)V
    .locals 0

    .line 152
    iput p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mGroupType:I

    return-void
.end method

.method public setImageId(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mImageId:Ljava/lang/String;

    return-void
.end method

.method public setInstantAppLink(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mInstantAppLink:Ljava/lang/String;

    return-void
.end method

.method public setMoreButtonBg(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mMoreButtonBg:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setMoreButtonBgRes(I)V
    .locals 0

    .line 258
    iput p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mMoreButtonBgRes:I

    return-void
.end method

.method public setMoreButtonColor(I)V
    .locals 0

    .line 298
    iput p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mMoreButtonColor:I

    return-void
.end method

.method public setMoreButtonMarginLeft(I)V
    .locals 0

    .line 306
    iput p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mMoreButtonMarginLeft:I

    return-void
.end method

.method public setMoreButtonPressedBg(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mMoreButtonPressedBg:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setMoreButtonPressedBgRes(I)V
    .locals 0

    .line 266
    iput p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mMoreButtonPressedBgRes:I

    return-void
.end method

.method public setMoreButtonSize(I)V
    .locals 0

    .line 290
    iput p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mMoreButtonSize:I

    return-void
.end method

.method public setNextWallpaper(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mNextWallPaper:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mContentString:Ljava/lang/String;

    return-void
.end method

.method public setTextTitle(Ljava/lang/String;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setTitleColor(I)V
    .locals 0

    .line 234
    iput p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mTitleColor:I

    return-void
.end method

.method public setTitleSize(I)V
    .locals 0

    .line 226
    iput p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mTitleSize:I

    return-void
.end method

.method public setWallpaperDrawable(Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mWallpaperDrawable:Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    return-void
.end method

.method public setWallpaperType(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mImageType:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;

    return-void
.end method

.method public setWebUrl(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mWebUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PictorialWallpaperInfo { mImageId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mImageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mGroupId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mGroupId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mGroupType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mGroupType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mFileUri="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mFileUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mFilePath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mContentString=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mContentString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mWebUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mWebUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mDeepLink=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mDeepLink:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mInstantAppLink=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mInstantAppLink:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mClickText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mClickText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mCopyrightDesc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mCopyrightDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mClickIntent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mClickIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mTitleSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mTitleSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mTitleColor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mTitleColor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mContentSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mContentSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mContentColor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mContentColor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMoreButtonBgRes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mMoreButtonBgRes:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMoreButtonPressedBgRes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mMoreButtonPressedBgRes:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMoreButtonBg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mMoreButtonBg:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mMoreButtonPressedBg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mMoreButtonPressedBg:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mWallpaperDrawable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mWallpaperDrawable:Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mMoreButtonSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mMoreButtonSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMoreButtonColor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mMoreButtonColor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMoreButtonMarginLeft="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mMoreButtonMarginLeft:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mImageType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mImageType:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mNextWallpaperImageId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mNextWallPaper:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mNextWallPaper:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    .line 432
    invoke-virtual {v3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getImageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->mNextWallPaper:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getTextContent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_3
    const-string p0, "null"

    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateDrawable(Landroid/content/Context;)V
    .locals 3

    .line 380
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getPictorialResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 381
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getMoreButtonBgRes()I

    move-result v1

    const v2, 0x7f080c03

    .line 379
    invoke-static {p1, v0, v1, v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getPictorialDrawable(Landroid/content/Context;Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 382
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setMoreButtonBg(Landroid/graphics/drawable/Drawable;)V

    .line 385
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getPictorialResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 386
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getMoreButtonPressedBgRes()I

    move-result v1

    .line 384
    invoke-static {p1, v0, v1, v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getPictorialDrawable(Landroid/content/Context;Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 387
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setMoreButtonPressedBg(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
