.class public final Lcom/coloros/settings/feature/storage/apps/usage/c;
.super Ljava/lang/Object;
.source "StorageNoSpaceAlert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/storage/apps/usage/c$a;,
        Lcom/coloros/settings/feature/storage/apps/usage/c$b;,
        Lcom/coloros/settings/feature/storage/apps/usage/c$c;
    }
.end annotation


# static fields
.field private static volatile a:Z = false

.field private static b:Lcom/coloros/settings/feature/storage/apps/usage/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 3

    .line 47
    sget-boolean v0, Lcom/coloros/settings/feature/storage/apps/usage/c;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 55
    sget-object v1, Lcom/coloros/settings/feature/storage/apps/usage/c$4;->a:[I

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    aget p1, v1, p1

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 57
    :cond_1
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->ay(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 60
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120d0d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 61
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120995

    new-instance v1, Lcom/coloros/settings/feature/storage/apps/usage/c$3;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/storage/apps/usage/c$3;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120491

    new-instance v0, Lcom/coloros/settings/feature/storage/apps/usage/c$2;

    invoke-direct {v0}, Lcom/coloros/settings/feature/storage/apps/usage/c$2;-><init>()V

    .line 72
    invoke-virtual {p0, p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/coloros/settings/feature/storage/apps/usage/c$1;

    invoke-direct {p1}, Lcom/coloros/settings/feature/storage/apps/usage/c$1;-><init>()V

    .line 79
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    .line 87
    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 93
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->show()V

    .line 94
    sput-boolean v2, Lcom/coloros/settings/feature/storage/apps/usage/c;->a:Z

    :cond_3
    return-void
.end method

.method public static a(Lcom/coloros/settings/feature/storage/apps/usage/c$a;)V
    .locals 0

    .line 38
    sput-object p0, Lcom/coloros/settings/feature/storage/apps/usage/c;->b:Lcom/coloros/settings/feature/storage/apps/usage/c$a;

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    const/4 v0, 0x0

    .line 24
    sput-boolean v0, Lcom/coloros/settings/feature/storage/apps/usage/c;->a:Z

    return v0
.end method

.method static synthetic b()Lcom/coloros/settings/feature/storage/apps/usage/c$a;
    .locals 1

    .line 24
    sget-object v0, Lcom/coloros/settings/feature/storage/apps/usage/c;->b:Lcom/coloros/settings/feature/storage/apps/usage/c$a;

    return-object v0
.end method
