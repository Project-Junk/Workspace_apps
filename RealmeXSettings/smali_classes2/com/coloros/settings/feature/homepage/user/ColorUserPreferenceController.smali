.class public Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;
.super Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;
.source "ColorUserPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/b;
.implements Lcom/android/settingslib/core/lifecycle/a/d;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$a;,
        Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$b;
    }
.end annotation


# static fields
.field public static final ACTION_ACCOUNT_LOGOUT:Ljava/lang/String; = "usercenter.account_logout"

.field public static final KEY_CACHED_AVATAR_PATH:Ljava/lang/String; = "CACHED_UC_AVATAR_PATH"

.field public static final KEY_CACHED_USER_ACCOUNT_NAME:Ljava/lang/String; = "cached_uc_account_name"

.field public static final KEY_CACHED_USER_NAME:Ljava/lang/String; = "cached_uc_user_name"

.field private static final KEY_USER_CENTER:Ljava/lang/String; = "usercenter_preference"

.field private static final TAG:Ljava/lang/String; = "ColorUserPreferenceController"


# instance fields
.field private mCachedAvatar:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayCache:Z

.field private mHandler:Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$a;

.field private mIsLogin:Z

.field private mLocalBroadcastMgr:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private mProfileUpdate:Landroid/content/BroadcastReceiver;

.field private mUCLogoutReceiver:Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$b;

.field private mUserCenterPreference:Lcom/coloros/settings/feature/homepage/user/UserCenterPreference;

.field private mUserCenterProfileHelper:Lcom/coloros/settings/feature/homepage/user/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "usercenter_preference"

    .line 90
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mCachedAvatar:Ljava/util/HashMap;

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mDisplayCache:Z

    .line 87
    new-instance p1, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$a;-><init>(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;B)V

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mHandler:Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$a;

    .line 365
    new-instance p1, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$1;-><init>(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mProfileUpdate:Landroid/content/BroadcastReceiver;

    .line 91
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mLocalBroadcastMgr:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    return-void
.end method

.method static synthetic access$1000(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->setAvatar(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mIsLogin:Z

    return p0
.end method

.method static synthetic access$202(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mIsLogin:Z

    return p1
.end method

.method static synthetic access$300(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->updatePreferenceWhenUCLogout()V

    return-void
.end method

.method static synthetic access$400(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;)Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$a;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mHandler:Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$a;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;)Lcom/coloros/settings/feature/homepage/user/a;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mUserCenterProfileHelper:Lcom/coloros/settings/feature/homepage/user/a;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;)Lcom/coloros/settings/feature/homepage/user/UserCenterPreference;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mUserCenterPreference:Lcom/coloros/settings/feature/homepage/user/UserCenterPreference;

    return-object p0
.end method

.method static synthetic access$700(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->cacheUserInfoData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$802(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mDisplayCache:Z

    return p1
.end method

.method static synthetic access$900(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private cacheUserInfoData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cached_uc_user_name"

    .line 236
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "cached_uc_account_name"

    .line 237
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "CACHED_UC_AVATAR_PATH"

    .line 238
    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 239
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private getAvatarDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 294
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ColorUserPreferenceController"

    if-eqz v0, :cond_0

    const-string p1, "setAvatar#doInBackground: avatarUrl is empty"

    .line 295
    invoke-static {v2, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 301
    iget-object v3, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mCachedAvatar:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 302
    iget-object v3, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mCachedAvatar:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    const-string p1, "setAvatar#doInBackground: use cached avatar bitmap"

    .line 304
    invoke-static {v2, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 310
    :cond_1
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->getAvatarFromLocal(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v1, "setAvatar#doInBackground: use local avatar bitmap"

    .line 312
    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 314
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mCachedAvatar:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1
.end method

.method private getAvatarFromLocal(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const-string v0, "content://"

    .line 350
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 351
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->getDrawableFromUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_2

    .line 353
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 356
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 357
    :try_start_1
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 356
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    move-object v3, v2

    move-object v2, p1

    move-object p1, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 358
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :goto_1
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p1

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getAvatarFromLocal: exception "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ColorUserPreferenceController"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method

.method private getDrawableFromUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 321
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.resource"

    .line 322
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Unable to open content: "

    const-string v3, "ColorUserPreferenceController"

    if-eqz v1, :cond_0

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mContext:Landroid/content/Context;

    .line 326
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    move-result-object v0

    .line 327
    iget-object v1, v0, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v0, v0, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    iget-object v4, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 329
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    const-string v1, "content"

    .line 331
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "file"

    .line 332
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 344
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 334
    :cond_2
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/res/Resources;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    .line 337
    sget-object v1, Lcom/coloros/settings/feature/homepage/user/-$$Lambda$ColorUserPreferenceController$MWTcM2iJpwuJIVHD950vi4u021M;->INSTANCE:Lcom/coloros/settings/feature/homepage/user/-$$Lambda$ColorUserPreferenceController$MWTcM2iJpwuJIVHD950vi4u021M;

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception v0

    .line 341
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic lambda$MeafBJt6SGG6YpgyFaYV48sL3kU(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->updatePreferenceWhenUCLogout()V

    return-void
.end method

.method static synthetic lambda$getDrawableFromUri$5(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 0

    const/4 p1, 0x1

    .line 338
    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    return-void
.end method

.method private removeUserInfoCache()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cached_uc_user_name"

    .line 271
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "cached_uc_account_name"

    .line 272
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "CACHED_UC_AVATAR_PATH"

    .line 273
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 274
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private requestAccountInfo(Lcom/coloros/settings/feature/homepage/user/a;)V
    .locals 4

    const-string v0, "ColorUserPreferenceController"

    const-string v1, "requestAccountInfo: start"

    .line 243
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mContext:Landroid/content/Context;

    .line 2091
    new-instance v1, Lcom/coloros/settings/feature/homepage/user/a$a;

    invoke-direct {v1, p1}, Lcom/coloros/settings/feature/homepage/user/a$a;-><init>(Lcom/coloros/settings/feature/homepage/user/a;)V

    iput-object v1, p1, Lcom/coloros/settings/feature/homepage/user/a;->a:Lcom/coloros/settings/feature/homepage/user/a$a;

    .line 2093
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "oppo.usercenter.intent.action.get_user_profile"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2108
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getPkgnameUcHeytapXor8()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/platform/usercenter/common/helper/ApkInfoHelper;->hasAPK(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2095
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getPkgnameUcHeytapXor8()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.usercenter.action.service.get_user_profile"

    .line 2096
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 2098
    :cond_0
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getUCPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2101
    :goto_0
    iget-object v2, p1, Lcom/coloros/settings/feature/homepage/user/a;->a:Lcom/coloros/settings/feature/homepage/user/a$a;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2103
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bindService error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserCenterProfileHelper"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :goto_1
    new-instance v0, Lcom/coloros/settings/feature/homepage/user/-$$Lambda$ColorUserPreferenceController$pMvJc_T42L7TuBcu2lfHWgQsRAI;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/homepage/user/-$$Lambda$ColorUserPreferenceController$pMvJc_T42L7TuBcu2lfHWgQsRAI;-><init>(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;Lcom/coloros/settings/feature/homepage/user/a;)V

    invoke-static {v0}, Lcom/coloros/settings/utils/bk;->c(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private setAvatar(Ljava/lang/String;)V
    .locals 1

    .line 279
    new-instance v0, Lcom/coloros/settings/feature/homepage/user/-$$Lambda$ColorUserPreferenceController$FtT4d47LSgywNmg76kZBRXxgI9A;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/homepage/user/-$$Lambda$ColorUserPreferenceController$FtT4d47LSgywNmg76kZBRXxgI9A;-><init>(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/coloros/settings/utils/bk;->d(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private updatePreferenceWhenUCLogout()V
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mUserCenterPreference:Lcom/coloros/settings/feature/homepage/user/UserCenterPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f12185d

    .line 260
    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/homepage/user/UserCenterPreference;->setTitle(I)V

    .line 261
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mUserCenterPreference:Lcom/coloros/settings/feature/homepage/user/UserCenterPreference;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->getSummaryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/homepage/user/UserCenterPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mUserCenterPreference:Lcom/coloros/settings/feature/homepage/user/UserCenterPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f0809d4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/homepage/user/UserCenterPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 265
    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->removeUserInfoCache()V

    const/4 v0, 0x1

    .line 266
    iput-boolean v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mDisplayCache:Z

    return-void
.end method

.method private useCachedUserInfo()V
    .locals 2

    const-string v0, "ColorUserPreferenceController"

    const-string v1, "useCachedUserInfo: start"

    .line 199
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance v0, Lcom/coloros/settings/feature/homepage/user/-$$Lambda$ColorUserPreferenceController$sWFSvu-xTcfKCbrAfVP2BsI6Hms;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/homepage/user/-$$Lambda$ColorUserPreferenceController$sWFSvu-xTcfKCbrAfVP2BsI6Hms;-><init>(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;)V

    invoke-static {v0}, Lcom/coloros/settings/utils/bk;->d(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 96
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 97
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/homepage/user/UserCenterPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mUserCenterPreference:Lcom/coloros/settings/feature/homepage/user/UserCenterPreference;

    .line 99
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mUserCenterPreference:Lcom/coloros/settings/feature/homepage/user/UserCenterPreference;

    if-eqz p1, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->getSummaryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/homepage/user/UserCenterPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v0, "connect_settings_category"

    .line 103
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_1

    const v0, 0x7f0d0226

    .line 105
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->setLayoutResource(I)V

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->ap(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method protected getSummaryString()Ljava/lang/String;
    .locals 2

    .line 113
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f121860

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1051
    :cond_0
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f121862

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f121861

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 174
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "usercenter_preference"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "usercenter_box_preference"

    .line 1248
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/coloros/settings/utils/al;->a()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 177
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1207fb

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v0

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/heytap/usercenter/accountsdk/AccountAgent;->startAccountSettingActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mContext:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 182
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    const v1, 0x7f010067

    const v2, 0x7f010068

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    return v0

    .line 186
    :cond_2
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$null$0$ColorUserPreferenceController(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mUserCenterPreference:Lcom/coloros/settings/feature/homepage/user/UserCenterPreference;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mDisplayCache:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mUserCenterPreference:Lcom/coloros/settings/feature/homepage/user/UserCenterPreference;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/homepage/user/UserCenterPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 221
    :cond_1
    sget-boolean p1, Lcom/coloros/settings/a;->a:Z

    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 222
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mUserCenterPreference:Lcom/coloros/settings/feature/homepage/user/UserCenterPreference;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/homepage/user/UserCenterPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz p3, :cond_3

    .line 225
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mUserCenterPreference:Lcom/coloros/settings/feature/homepage/user/UserCenterPreference;

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p2, v0, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/homepage/user/UserCenterPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 227
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mUserCenterPreference:Lcom/coloros/settings/feature/homepage/user/UserCenterPreference;

    iget-object p2, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mContext:Landroid/content/Context;

    const p3, 0x7f0809d4

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/homepage/user/UserCenterPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 214
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "useCachedUserInfo#onSuccess: failed, "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mUserCenterPreference:Lcom/coloros/settings/feature/homepage/user/UserCenterPreference;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mDisplayCache:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ColorUserPreferenceController"

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$null$3$ColorUserPreferenceController(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mUserCenterPreference:Lcom/coloros/settings/feature/homepage/user/UserCenterPreference;

    if-nez v0, :cond_0

    const-string p1, "ColorUserPreferenceController"

    const-string v0, "setAvatar#onSuccess: UserCenterPreference is null"

    .line 283
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 286
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f0809d4

    .line 287
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 286
    :cond_1
    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/homepage/user/UserCenterPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public synthetic lambda$requestAccountInfo$2$ColorUserPreferenceController(Lcom/coloros/settings/feature/homepage/user/a;)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "HsRxAF2bMeNzPL54zGFLzw"

    .line 3016
    invoke-static {v0, v1}, Lcom/heytap/usercenter/accountsdk/AccountAgent;->isLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 247
    iput-boolean v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mIsLogin:Z

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mHandler:Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$a;

    .line 3049
    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/homepage/user/a;->a(Landroid/os/Handler;)V

    return-void

    .line 251
    :cond_0
    new-instance p1, Lcom/coloros/settings/feature/homepage/user/-$$Lambda$ColorUserPreferenceController$MeafBJt6SGG6YpgyFaYV48sL3kU;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/homepage/user/-$$Lambda$ColorUserPreferenceController$MeafBJt6SGG6YpgyFaYV48sL3kU;-><init>(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;)V

    invoke-static {p1}, Lcom/coloros/settings/utils/bk;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$setAvatar$4$ColorUserPreferenceController(Ljava/lang/String;)V
    .locals 1

    .line 280
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->getAvatarDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 281
    new-instance v0, Lcom/coloros/settings/feature/homepage/user/-$$Lambda$ColorUserPreferenceController$ts6D-wchzkvQRNzkOAqp7_18-QY;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/homepage/user/-$$Lambda$ColorUserPreferenceController$ts6D-wchzkvQRNzkOAqp7_18-QY;-><init>(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lcom/coloros/settings/utils/bk;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$useCachedUserInfo$1$ColorUserPreferenceController()V
    .locals 5

    .line 201
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    const-string v2, "cached_uc_user_name"

    .line 202
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cached_uc_account_name"

    .line 203
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CACHED_UC_AVATAR_PATH"

    .line 204
    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->getAvatarFromLocal(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 212
    new-instance v1, Lcom/coloros/settings/feature/homepage/user/-$$Lambda$ColorUserPreferenceController$9Oux6bbNnI0-C0Y4FedN1POzv8M;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/coloros/settings/feature/homepage/user/-$$Lambda$ColorUserPreferenceController$9Oux6bbNnI0-C0Y4FedN1POzv8M;-><init>(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lcom/coloros/settings/utils/bk;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 125
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->useCachedUserInfo()V

    .line 127
    new-instance p1, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$b;-><init>(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;B)V

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mUCLogoutReceiver:Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$b;

    .line 128
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mLocalBroadcastMgr:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mUCLogoutReceiver:Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$b;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "usercenter.account_logout"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 161
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mLocalBroadcastMgr:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mUCLogoutReceiver:Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$b;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mUCLogoutReceiver:Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$b;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mProfileUpdate:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 149
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPause unregisterReceiver error, "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorUserPreferenceController"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mUserCenterProfileHelper:Lcom/coloros/settings/feature/homepage/user/a;

    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mContext:Landroid/content/Context;

    .line 1115
    iget-object v2, v0, Lcom/coloros/settings/feature/homepage/user/a;->a:Lcom/coloros/settings/feature/homepage/user/a$a;

    if-eqz v2, :cond_0

    .line 1117
    :try_start_1
    iget-object v2, v0, Lcom/coloros/settings/feature/homepage/user/a;->a:Lcom/coloros/settings/feature/homepage/user/a$a;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 1119
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bindService error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserCenterProfileHelper"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    const/4 v1, 0x0

    .line 1122
    iput-object v1, v0, Lcom/coloros/settings/feature/homepage/user/a;->a:Lcom/coloros/settings/feature/homepage/user/a$a;

    .line 1123
    iput-object v1, v0, Lcom/coloros/settings/feature/homepage/user/a;->b:Landroid/os/Messenger;

    .line 154
    iput-object v1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mUserCenterProfileHelper:Lcom/coloros/settings/feature/homepage/user/a;

    .line 155
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mHandler:Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$a;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 134
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Lcom/coloros/settings/feature/homepage/user/a;

    invoke-direct {v0}, Lcom/coloros/settings/feature/homepage/user/a;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mUserCenterProfileHelper:Lcom/coloros/settings/feature/homepage/user/a;

    .line 136
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mUserCenterProfileHelper:Lcom/coloros/settings/feature/homepage/user/a;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->requestAccountInfo(Lcom/coloros/settings/feature/homepage/user/a;)V

    .line 139
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "oppo.intent.action.settings.UPDATE_MESSAGE_BOX"

    .line 140
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->mProfileUpdate:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
