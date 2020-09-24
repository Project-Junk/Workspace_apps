.class final Lcom/android/settingslib/p/a$b;
.super Ljava/lang/Object;
.source "AppRestrictionsHelper.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/p/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 0

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput-object p1, p0, Lcom/android/settingslib/p/a$b;->a:Landroid/content/Context;

    .line 398
    iput-object p2, p0, Lcom/android/settingslib/p/a$b;->b:Landroid/os/UserHandle;

    return-void
.end method
