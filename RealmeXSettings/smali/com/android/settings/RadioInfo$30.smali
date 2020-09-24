.class final Lcom/android/settings/RadioInfo$30;
.super Ljava/lang/Thread;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;Ljava/lang/Runnable;)V
    .locals 0

    .line 1254
    iput-object p1, p0, Lcom/android/settings/RadioInfo$30;->b:Lcom/android/settings/RadioInfo;

    iput-object p2, p0, Lcom/android/settings/RadioInfo$30;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1257
    iget-object v0, p0, Lcom/android/settings/RadioInfo$30;->b:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->u(Lcom/android/settings/RadioInfo;)V

    .line 1258
    iget-object v0, p0, Lcom/android/settings/RadioInfo$30;->b:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->m(Lcom/android/settings/RadioInfo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo$30;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
