.class final Lcom/android/settings/widget/d$1;
.super Ljava/lang/Object;
.source "LoadingViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/widget/d;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/d;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/settings/widget/d$1;->a:Lcom/android/settings/widget/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/android/settings/widget/d$1;->a:Lcom/android/settings/widget/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/settings/widget/d;->a(ZZ)V

    return-void
.end method
