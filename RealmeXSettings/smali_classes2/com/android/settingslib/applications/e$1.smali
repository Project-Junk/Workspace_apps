.class final Lcom/android/settingslib/applications/e$1;
.super Landroid/database/ContentObserver;
.source "ServiceListing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/applications/e;


# direct methods
.method constructor <init>(Lcom/android/settingslib/applications/e;Landroid/os/Handler;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/android/settingslib/applications/e$1;->a:Lcom/android/settingslib/applications/e;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 167
    iget-object p1, p0, Lcom/android/settingslib/applications/e$1;->a:Lcom/android/settingslib/applications/e;

    invoke-virtual {p1}, Lcom/android/settingslib/applications/e;->a()V

    return-void
.end method
