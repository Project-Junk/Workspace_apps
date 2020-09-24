.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$3ji9cCKjQKZxoex-HI_Fr2AqXCI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$3ji9cCKjQKZxoex-HI_Fr2AqXCI;->f$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$3ji9cCKjQKZxoex-HI_Fr2AqXCI;->f$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    check-cast p1, Lcom/android/settings/core/a;

    invoke-static {v0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$3ji9cCKjQKZxoex-HI_Fr2AqXCI(Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/core/a;)V

    return-void
.end method
