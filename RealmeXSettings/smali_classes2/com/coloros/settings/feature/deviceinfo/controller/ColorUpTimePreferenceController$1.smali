.class final Lcom/coloros/settings/feature/deviceinfo/controller/ColorUpTimePreferenceController$1;
.super Lcom/coloros/settings/utils/be;
.source "ColorUpTimePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/deviceinfo/controller/ColorUpTimePreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/settings/utils/be<",
        "Lcom/coloros/settings/feature/deviceinfo/controller/ColorUpTimePreferenceController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/deviceinfo/controller/ColorUpTimePreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/deviceinfo/controller/ColorUpTimePreferenceController;Lcom/coloros/settings/feature/deviceinfo/controller/ColorUpTimePreferenceController;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorUpTimePreferenceController$1;->a:Lcom/coloros/settings/feature/deviceinfo/controller/ColorUpTimePreferenceController;

    invoke-direct {p0, p2}, Lcom/coloros/settings/utils/be;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1

    .line 43
    check-cast p2, Lcom/coloros/settings/feature/deviceinfo/controller/ColorUpTimePreferenceController;

    .line 1046
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1048
    :cond_0
    invoke-static {p2}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorUpTimePreferenceController;->a(Lcom/coloros/settings/feature/deviceinfo/controller/ColorUpTimePreferenceController;)V

    :goto_0
    return-void
.end method
