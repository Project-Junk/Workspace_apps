.class public Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;
.super Ljava/lang/Object;
.source "KeyguardPluginManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardPluginManager"

.field private static final THIRD_KEYGUARD_RES_PATH:Ljava/lang/String; = "data/theme/lock"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mForeignPackage:Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;

.field private mKeyguardCtrlClass:Ljava/lang/Class;

.field private mKeyguardResLastModifiedTime:J

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPlugInCallback:Lcom/android/keyguard/base/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mForeignPackage:Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;

    .line 43
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mKeyguardCtrlClass:Ljava/lang/Class;

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mKeyguardResLastModifiedTime:J

    .line 48
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mContext:Landroid/content/Context;

    .line 49
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private initForeignPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "KeyguardPluginManager"

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    :try_start_0
    new-instance v0, Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p1}, Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mForeignPackage:Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;

    .line 155
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mForeignPackage:Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;->initForeignPackage()Z

    move-result p1

    .line 156
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mForeignPackage:Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mKeyguardCtrlClass:Ljava/lang/Class;

    .line 158
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initForeignPackage, mForeignPackage = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mForeignPackage:Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mKeyguardCtrlClass = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mKeyguardCtrlClass:Ljava/lang/Class;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", ret = "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p0

    .line 162
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :cond_1
    :goto_0
    const-string p0, "initForeignPackage, packageName or className is null, return false"

    .line 149
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private isKeyguardResModified()Z
    .locals 4

    .line 211
    new-instance v0, Ljava/io/File;

    const-string v1, "data/theme/lock"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 212
    iget-wide v2, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mKeyguardResLastModifiedTime:J

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public clearKeyguardPlugIn()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mPlugInCallback:Lcom/android/keyguard/base/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mPlugInCallback:Lcom/android/keyguard/base/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mPlugInCallback:Lcom/android/keyguard/base/KeyguardUpdateMonitorCallback;

    :cond_0
    return-void
.end method

.method public getTypefaceFromAsset(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mForeignPackage:Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;

    if-eqz p0, :cond_0

    .line 170
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;->getTypefaceFromAsset(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "KeyguardPluginManager"

    const-string p1, "error, getTypefaceFromAsset, mForeignPackage = null"

    .line 172
    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public isKeyguardCompatible(Ljava/lang/String;)Z
    .locals 4

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 62
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.color.intent.action.keyguard"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 64
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_1

    .line 65
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v2, :cond_2

    goto :goto_0

    .line 68
    :cond_2
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isKeyguardCompatible tempPkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardPluginManager"

    invoke-static {v3, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const-string v2, "com.android.systemui"

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 76
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isKeyguardCompatible current keyguard:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is compatible to new keyguard architecture"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_5
    return v1
.end method

.method public loadKeyguard(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;)Lcom/android/keyguard/base/IKeyguardCtrl;
    .locals 8

    .line 86
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 87
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    const-string v2, "oppo_unlock_change_pkg"

    .line 86
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 89
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    const-string v3, "oppo_unlock_change_class"

    .line 88
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "KeyguardPluginManager"

    if-nez v2, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 97
    :cond_0
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->isKeyguardCompatible(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 99
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "loadKeyguard, is not compatible, packageName = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 103
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadKeyguard, pkg="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", cls="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mForeignPackage:Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    .line 106
    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;->getPackagename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->isKeyguardResModified()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_1

    .line 107
    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadKeyguard, update Foreign Package, foreignPkg="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mForeignPackage:Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;

    .line 108
    invoke-virtual {v7}, Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;->getPackagename()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-static {v4, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mForeignPackage:Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;

    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;->clear()V

    .line 110
    iput-object v3, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mForeignPackage:Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;

    .line 111
    iput-object v3, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mKeyguardCtrlClass:Ljava/lang/Class;

    :cond_4
    move v2, v5

    :goto_1
    if-eqz v2, :cond_5

    .line 119
    invoke-direct {p0, v0, v1}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->initForeignPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string p0, "loadKeyguard, initForeignPackage fail, return null"

    .line 120
    invoke-static {v4, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 125
    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mKeyguardCtrlClass:Ljava/lang/Class;

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 126
    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mForeignPackage:Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;

    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;->getContext()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/base/IKeyguardCtrl;

    .line 127
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mForeignPackage:Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1, v6}, Lcom/android/keyguard/base/IKeyguardCtrl;->beInflated(Landroid/content/Context;Landroid/view/ViewGroup;I)I

    move-result v1

    .line 128
    invoke-virtual {p1, v1}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->setViewFlag(I)V

    .line 129
    invoke-interface {v0}, Lcom/android/keyguard/base/IKeyguardCtrl;->getKeyguardUpdateMonitorCallback()Lcom/android/keyguard/base/KeyguardUpdateMonitorCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mPlugInCallback:Lcom/android/keyguard/base/KeyguardUpdateMonitorCallback;

    .line 130
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mPlugInCallback:Lcom/android/keyguard/base/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 131
    new-instance p1, Ljava/io/File;

    const-string v1, "data/theme/lock"

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mKeyguardResLastModifiedTime:J

    .line 132
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "loadKeyguard, keyguard load finished, keyguard ="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 134
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v3

    .line 91
    :cond_6
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "loadKeyguard, read setting fail, pkg = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", cls = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public maybeReloadNormalKeyguard(Z)Z
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 179
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    const-string v2, "oppo_unlock_change_pkg"

    .line 178
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "KeyguardPluginManager"

    if-eqz v1, :cond_0

    const-string v0, "maybeReloadNormalKeyguard, read setting fail, recoverToDefaultKeyguardSettings"

    .line 181
    invoke-static {v3, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getKeyguardUtils(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->recoverToDefaultKeyguardSettings(Landroid/content/Context;)V

    xor-int/lit8 p0, p1, 0x1

    return p0

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mForeignPackage:Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 186
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;->getPackagename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maybeReloadNormalKeyguard, UI-Engine change, from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mForeignPackage:Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;

    .line 188
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;->getPackagename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-static {v3, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mForeignPackage:Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;->clear()V

    const/4 p1, 0x0

    .line 190
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->mForeignPackage:Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;

    return v2

    .line 193
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardPluginManager;->isKeyguardResModified()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 194
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "maybeReloadNormalKeyguard, theme resources has modified : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 198
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "maybeReloadNormalKeyguard, not change : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    const-string p0, "com.android.systemui"

    .line 201
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "com.android.keyguard"

    .line 202
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    .line 206
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "maybeReloadNormalKeyguard, packageName="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_5
    :goto_0
    const-string p0, "maybeReloadNormalKeyguard, uses default LockScreen"

    .line 203
    invoke-static {v3, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
