.class public final synthetic Lcom/android/settings/wifi/-$$Lambda$v2NULdzcnOUFC3TArnHVaiLk_zM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/wifi/h;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/-$$Lambda$v2NULdzcnOUFC3TArnHVaiLk_zM;->f$0:Lcom/android/settings/wifi/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/-$$Lambda$v2NULdzcnOUFC3TArnHVaiLk_zM;->f$0:Lcom/android/settings/wifi/h;

    invoke-virtual {v0}, Lcom/android/settings/widget/e;->b()V

    return-void
.end method
