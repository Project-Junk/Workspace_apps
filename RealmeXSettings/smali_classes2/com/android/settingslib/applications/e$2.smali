.class final Lcom/android/settingslib/applications/e$2;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/android/settingslib/applications/e;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/settingslib/applications/e$2;->a:Lcom/android/settingslib/applications/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 174
    iget-object p1, p0, Lcom/android/settingslib/applications/e$2;->a:Lcom/android/settingslib/applications/e;

    invoke-virtual {p1}, Lcom/android/settingslib/applications/e;->a()V

    return-void
.end method
