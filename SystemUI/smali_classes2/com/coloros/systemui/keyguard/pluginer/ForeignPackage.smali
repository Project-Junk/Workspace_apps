.class public Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;
.super Ljava/lang/Object;
.source "ForeignPackage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ForeignPackage"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mForeignCtx:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private mTypefaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;->mTypefaces:Ljava/util/HashMap;

    .line 35
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;->mPackageName:Ljava/lang/String;

    .line 37
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;->mPackageName:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;->mForeignCtx:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;->mTypefaces:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;->mTypefaces:Ljava/util/HashMap;

    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;->mForeignCtx:Landroid/content/Context;

    return-object p0
.end method

.method public getPackagename()Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getTypefaceFromAsset(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTypefaceFromAsset, path ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ForeignPackage"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;->mTypefaces:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;->mTypefaces:Ljava/util/HashMap;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;->mTypefaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;->mForeignCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 70
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;->mTypefaces:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public initForeignPackage()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;->mForeignCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 43
    :try_start_0
    const-class v1, Ljava/lang/ClassLoader;

    const-string v2, "parent"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 45
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/ForeignPackage;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method
