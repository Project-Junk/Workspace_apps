.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$KYa0GFcvcnitAIp6s-XKOv00UU4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/dashboard/DashboardFragment;

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$KYa0GFcvcnitAIp6s-XKOv00UU4;->f$0:Lcom/android/settings/dashboard/DashboardFragment;

    iput-object p2, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$KYa0GFcvcnitAIp6s-XKOv00UU4;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$KYa0GFcvcnitAIp6s-XKOv00UU4;->f$0:Lcom/android/settings/dashboard/DashboardFragment;

    iget-object v1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$KYa0GFcvcnitAIp6s-XKOv00UU4;->f$1:Ljava/util/List;

    check-cast p1, Lcom/android/settingslib/core/a;

    invoke-static {v0, v1, p1}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$KYa0GFcvcnitAIp6s-XKOv00UU4(Lcom/android/settings/dashboard/DashboardFragment;Ljava/util/List;Lcom/android/settingslib/core/a;)V

    return-void
.end method
