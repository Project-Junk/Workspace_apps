.class public Lcom/coloros/systemui/notification/smallApp/SmallApp;
.super Ljava/lang/Object;
.source "SmallApp.java"


# static fields
.field public static final BADGE:Ljava/lang/String; = "badge"

.field public static final BANNER:Ljava/lang/String; = "banner"

.field public static final CHANGEABLE_FOLD:Ljava/lang/String; = "fold_user"

.field public static final CHANGEABLE_SHOW_ICON:Ljava/lang/String; = "statusbar_user"

.field public static final DOT:Ljava/lang/String; = "dot"

.field public static final FOLD:Ljava/lang/String; = "fold"

.field public static final HIDEDETAIL:Ljava/lang/String; = "hidedetail"

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final LIGHT:Ljava/lang/String; = "light"

.field public static final LOCKSCREEN:Ljava/lang/String; = "lockscreen"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NOTIFY:Ljava/lang/String; = "notify"

.field public static final PKG:Ljava/lang/String; = "pkg"

.field public static final PRIORITY:Ljava/lang/String; = "priority"

.field public static final RING:Ljava/lang/String; = "ring"

.field public static final SHOW_ICON:Ljava/lang/String; = "statusbar"

.field public static final STOW:Ljava/lang/String; = "smart_fold"

.field private static final TAG:Ljava/lang/String; = "Notification_SA"

.field public static final VIBRATE:Ljava/lang/String; = "vibrate"


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mBadge:Z

.field private mBanner:Z

.field private mChangeableFold:Z

.field private mChangeableShowIcon:Z

.field private mCircleBadge:Z

.field private mFold:Z

.field private mHideDetail:Z

.field private mIcon:[B

.field private mLight:Z

.field private mLockScreen:Z

.field private mNotify:Z

.field private mPackageName:Ljava/lang/String;

.field private mPriority:Z

.field private mPropertiesOnOs6NotAvailable:Z

.field private mPropertiesOnOs7NotAvailable:Z

.field private mShowIcon:Z

.field private mSound:Z

.field private mStowOption:I

.field private mVibrate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mStowOption:I

    return-void
.end method

.method public static createByCursor(Landroid/database/Cursor;)Lcom/coloros/systemui/notification/smallApp/SmallApp;
    .locals 6

    .line 258
    new-instance v0, Lcom/coloros/systemui/notification/smallApp/SmallApp;

    invoke-direct {v0}, Lcom/coloros/systemui/notification/smallApp/SmallApp;-><init>()V

    const-string v1, "pkg"

    .line 259
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->setPackageName(Ljava/lang/String;)V

    const-string v1, "name"

    .line 260
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->setAppName(Ljava/lang/String;)V

    const-string v1, "icon"

    .line 261
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->setIcon([B)V

    const-string v1, "notify"

    .line 262
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->setNotify(Z)V

    const-string v1, "lockscreen"

    .line 263
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->setLockScreen(Z)V

    const-string v1, "hidedetail"

    .line 264
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->setHideDetail(Z)V

    const-string v1, "badge"

    .line 265
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->setBadge(Z)V

    const-string v1, "dot"

    .line 266
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->setCircleBadge(Z)V

    const-string v1, "banner"

    .line 267
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->setBanner(Z)V

    const-string v1, "ring"

    .line 268
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->setSound(Z)V

    const-string v1, "vibrate"

    .line 269
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_7

    move v1, v3

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->setVibrate(Z)V

    const-string v1, "light"

    .line 270
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_8

    move v1, v3

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->setLight(Z)V

    const-string v1, "priority"

    .line 271
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_9

    move v1, v3

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->setPriprity(Z)V

    const-string v1, "statusbar"

    .line 272
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_a

    move v4, v3

    goto :goto_a

    :cond_a
    move v4, v2

    :goto_a
    if-eqz v4, :cond_f

    .line 274
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_b

    move v1, v3

    goto :goto_b

    :cond_b
    move v1, v2

    :goto_b
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->setShowIcon(Z)V

    const-string v1, "statusbar_user"

    .line 275
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_c

    move v1, v3

    goto :goto_c

    :cond_c
    move v1, v2

    :goto_c
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->setChangeableShowIcon(Z)V

    const-string v1, "fold"

    .line 276
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_d

    move v1, v3

    goto :goto_d

    :cond_d
    move v1, v2

    :goto_d
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->setFold(Z)V

    const-string v1, "fold_user"

    .line 277
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_e

    move v1, v3

    goto :goto_e

    :cond_e
    move v1, v2

    :goto_e
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->setChangeableFold(Z)V

    goto :goto_f

    .line 279
    :cond_f
    invoke-virtual {v0, v3}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->setPropertiesOnOs6NotAvailable(Z)V

    .line 280
    sget-boolean v1, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz v1, :cond_10

    const-string v1, "Notification_SA"

    const-string v4, "createByCursor: the instant app engine is old->"

    .line 281
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_f
    const-string v1, "smart_fold"

    .line 285
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_11

    move v4, v3

    goto :goto_10

    :cond_11
    move v4, v2

    :goto_10
    if-eqz v4, :cond_12

    .line 287
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->setStowOption(I)V

    .line 288
    invoke-virtual {v0, v2}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->setPropertiesOnOs7NotAvailable(Z)V

    goto :goto_11

    .line 290
    :cond_12
    invoke-virtual {v0, v3}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->setPropertiesOnOs7NotAvailable(Z)V

    :goto_11
    return-object v0
.end method

.method public static getDrawable(Lcom/coloros/systemui/notification/smallApp/SmallApp;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 296
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->getIcon()[B

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    :try_start_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->getIcon()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->getIcon()[B

    move-result-object p0

    array-length p0, p0

    invoke-static {v2, v3, p0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDrawable()--e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Notification_SA"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public getChannelName()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getIcon()[B
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mIcon:[B

    return-object p0
.end method

.method public getLockscreenVisibility()I
    .locals 1

    .line 225
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->isLockScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->isHideDetail()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getStowOption()I
    .locals 0

    .line 216
    iget p0, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mStowOption:I

    return p0
.end method

.method public isBadge()Z
    .locals 0

    .line 128
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mBadge:Z

    return p0
.end method

.method public isBanner()Z
    .locals 0

    .line 144
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mBanner:Z

    return p0
.end method

.method public isChangeableFold()Z
    .locals 0

    .line 200
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mChangeableFold:Z

    return p0
.end method

.method public isChangeableShowIcon()Z
    .locals 0

    .line 208
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mChangeableShowIcon:Z

    return p0
.end method

.method public isCircleBadge()Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mCircleBadge:Z

    return p0
.end method

.method public isFold()Z
    .locals 0

    .line 196
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mFold:Z

    return p0
.end method

.method public isHideDetail()Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mHideDetail:Z

    return p0
.end method

.method public isLight()Z
    .locals 0

    .line 176
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mLight:Z

    return p0
.end method

.method public isLockScreen()Z
    .locals 0

    .line 112
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mLockScreen:Z

    return p0
.end method

.method public isNotify()Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mNotify:Z

    return p0
.end method

.method public isPriprity()Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mPriority:Z

    return p0
.end method

.method public isPropertiesOnOs6NotAvailable()Z
    .locals 0

    .line 246
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mPropertiesOnOs6NotAvailable:Z

    return p0
.end method

.method public isPropertiesOnOs7NotAvailable()Z
    .locals 0

    .line 254
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mPropertiesOnOs7NotAvailable:Z

    return p0
.end method

.method public isShowIcon()Z
    .locals 0

    .line 188
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mShowIcon:Z

    return p0
.end method

.method public isSound()Z
    .locals 0

    .line 152
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mSound:Z

    return p0
.end method

.method public isVibrate()Z
    .locals 0

    .line 160
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mVibrate:Z

    return p0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mAppName:Ljava/lang/String;

    return-void
.end method

.method public setBadge(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mBadge:Z

    return-void
.end method

.method public setBanner(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mBanner:Z

    return-void
.end method

.method public setChangeableFold(Z)V
    .locals 0

    .line 204
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mChangeableFold:Z

    return-void
.end method

.method public setChangeableShowIcon(Z)V
    .locals 0

    .line 212
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mChangeableShowIcon:Z

    return-void
.end method

.method public setCircleBadge(Z)V
    .locals 0

    .line 136
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mCircleBadge:Z

    return-void
.end method

.method public setFold(Z)V
    .locals 0

    .line 192
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mFold:Z

    return-void
.end method

.method public setHideDetail(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mHideDetail:Z

    return-void
.end method

.method public setIcon([B)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mIcon:[B

    return-void
.end method

.method public setLight(Z)V
    .locals 0

    .line 180
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mLight:Z

    return-void
.end method

.method public setLockScreen(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mLockScreen:Z

    return-void
.end method

.method public setNotify(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mNotify:Z

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setPriprity(Z)V
    .locals 0

    .line 172
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mPriority:Z

    return-void
.end method

.method public setPropertiesOnOs6NotAvailable(Z)V
    .locals 0

    .line 242
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mPropertiesOnOs6NotAvailable:Z

    return-void
.end method

.method public setPropertiesOnOs7NotAvailable(Z)V
    .locals 0

    .line 250
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mPropertiesOnOs7NotAvailable:Z

    return-void
.end method

.method public setShowIcon(Z)V
    .locals 0

    .line 184
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mShowIcon:Z

    return-void
.end method

.method public setSound(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mSound:Z

    return-void
.end method

.method public setStowOption(I)V
    .locals 0

    .line 220
    iput p1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mStowOption:I

    return-void
.end method

.method public setVibrate(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mVibrate:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",appName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mNotify:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mNotify:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mLockScreen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mLockScreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mHideDetail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mHideDetail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mBadge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mBadge:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",light:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mLight:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mBanner:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mBanner:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mSound:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mSound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mVibrate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mVibrate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",priority:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mPriority:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mCircleBadge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mCircleBadge:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mShowIcon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mShowIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mChangeableShowIcon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mChangeableShowIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mFold:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mFold:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mChangeableFold:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mChangeableFold:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mStowOption:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/notification/smallApp/SmallApp;->mStowOption:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
