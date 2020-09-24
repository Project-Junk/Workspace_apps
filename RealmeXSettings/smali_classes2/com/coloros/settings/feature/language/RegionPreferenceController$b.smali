.class final Lcom/coloros/settings/feature/language/RegionPreferenceController$b;
.super Landroid/os/Handler;
.source "RegionPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/language/RegionPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/language/RegionPreferenceController;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/language/RegionPreferenceController;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/coloros/settings/feature/language/RegionPreferenceController$b;->a:Lcom/coloros/settings/feature/language/RegionPreferenceController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/feature/language/RegionPreferenceController;B)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/language/RegionPreferenceController$b;-><init>(Lcom/coloros/settings/feature/language/RegionPreferenceController;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/feature/language/RegionPreferenceController$b;->a:Lcom/coloros/settings/feature/language/RegionPreferenceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/language/RegionPreferenceController;->access$100(Lcom/coloros/settings/feature/language/RegionPreferenceController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/coloros/settings/feature/language/RegionPreferenceController$b;->a:Lcom/coloros/settings/feature/language/RegionPreferenceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/language/RegionPreferenceController;->access$400(Lcom/coloros/settings/feature/language/RegionPreferenceController;)Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
