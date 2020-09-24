.class public final synthetic Lcom/android/settings/wifi/dpp/-$$Lambda$a$4fmGiJ66g_CU5KhnwW7Jdfe-EiY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final synthetic f$0:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/-$$Lambda$a$4fmGiJ66g_CU5KhnwW7Jdfe-EiY;->f$0:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/-$$Lambda$a$4fmGiJ66g_CU5KhnwW7Jdfe-EiY;->f$0:Landroid/os/Handler;

    invoke-static {v0, p1}, Lcom/android/settings/wifi/dpp/a;->lambda$4fmGiJ66g_CU5KhnwW7Jdfe-EiY(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method
