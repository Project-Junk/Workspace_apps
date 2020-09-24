.class Lcom/color/compat/content/pm/PackageManagerNative$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/color/inner/content/pm/PackageManagerWrapper$IPackageStatsObserverWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/compat/content/pm/PackageManagerNative;->getPackageSizeInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/color/compat/content/pm/PackageManagerNative$IPackageStatsObserverNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$observer:Lcom/color/compat/content/pm/PackageManagerNative$IPackageStatsObserverNative;


# direct methods
.method constructor <init>(Lcom/color/compat/content/pm/PackageManagerNative$IPackageStatsObserverNative;)V
    .locals 0

    iput-object p1, p0, Lcom/color/compat/content/pm/PackageManagerNative$5;->val$observer:Lcom/color/compat/content/pm/PackageManagerNative$IPackageStatsObserverNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 0

    iget-object p0, p0, Lcom/color/compat/content/pm/PackageManagerNative$5;->val$observer:Lcom/color/compat/content/pm/PackageManagerNative$IPackageStatsObserverNative;

    invoke-interface {p0, p1, p2}, Lcom/color/compat/content/pm/PackageManagerNative$IPackageStatsObserverNative;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V

    return-void
.end method
