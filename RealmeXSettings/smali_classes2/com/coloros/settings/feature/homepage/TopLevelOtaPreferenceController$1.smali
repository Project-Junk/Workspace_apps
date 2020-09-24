.class final Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "TopLevelOtaPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController$1;->a:Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 124
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 125
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController$1;->a:Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->access$000(Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->V(Landroid/content/Context;)I

    move-result p1

    .line 126
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController$1;->a:Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->access$100(Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;I)V

    return-void
.end method
