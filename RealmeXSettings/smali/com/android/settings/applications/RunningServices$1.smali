.class final Lcom/android/settings/applications/RunningServices$1;
.super Ljava/lang/Object;
.source "RunningServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/RunningServices;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningServices;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/settings/applications/RunningServices$1;->a:Lcom/android/settings/applications/RunningServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/android/settings/applications/RunningServices$1;->a:Lcom/android/settings/applications/RunningServices;

    iget-object v0, v0, Lcom/android/settings/applications/RunningServices;->c:Lcom/android/settings/widget/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/d;->a(Z)V

    return-void
.end method
