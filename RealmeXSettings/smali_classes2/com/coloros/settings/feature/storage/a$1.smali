.class final Lcom/coloros/settings/feature/storage/a$1;
.super Landroid/util/Singleton;
.source "ColorStorageCategorySizeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/coloros/settings/feature/storage/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic create()Ljava/lang/Object;
    .locals 3

    .line 1080
    new-instance v0, Lcom/coloros/settings/feature/storage/a;

    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/coloros/settings/feature/storage/a;-><init>(Landroid/content/Context;B)V

    return-object v0
.end method
