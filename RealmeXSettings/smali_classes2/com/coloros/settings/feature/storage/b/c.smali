.class public Lcom/coloros/settings/feature/storage/b/c;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# static fields
.field private static final a:Ljava/lang/String; = "c"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .line 26
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.cleandroid.ui.ClearMainActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "enter_from"

    const-string v2, "com.android.settings"

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "same_task_animation"

    const/4 v2, 0x1

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 30
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 32
    :catch_0
    sget-object p0, Lcom/coloros/settings/feature/storage/b/c;->a:Ljava/lang/String;

    const-string v0, "ActivityNotFoundException action =com.oppo.cleandroid.ui.ClearMainActivity"

    invoke-static {p0, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
