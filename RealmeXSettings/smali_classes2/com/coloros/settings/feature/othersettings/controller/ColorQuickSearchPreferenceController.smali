.class public Lcom/coloros/settings/feature/othersettings/controller/ColorQuickSearchPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorQuickSearchPreferenceController.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "search"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "search"

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorQuickSearchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/custom/b;->r(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
