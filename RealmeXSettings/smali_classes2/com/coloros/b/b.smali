.class public final Lcom/coloros/b/b;
.super Ljava/lang/Object;
.source "OppoPkgManagerUtils.java"


# static fields
.field private static a:Landroid/content/pm/OppoPackageManager;


# direct methods
.method public static a()Landroid/content/pm/OppoPackageManager;
    .locals 1

    .line 23
    sget-object v0, Lcom/coloros/b/b;->a:Landroid/content/pm/OppoPackageManager;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Landroid/content/pm/OppoPackageManager;

    invoke-direct {v0}, Landroid/content/pm/OppoPackageManager;-><init>()V

    sput-object v0, Lcom/coloros/b/b;->a:Landroid/content/pm/OppoPackageManager;

    .line 26
    :cond_0
    sget-object v0, Lcom/coloros/b/b;->a:Landroid/content/pm/OppoPackageManager;

    return-object v0
.end method
