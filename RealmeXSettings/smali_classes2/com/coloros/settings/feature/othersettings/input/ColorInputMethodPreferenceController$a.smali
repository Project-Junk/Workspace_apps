.class final Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController$a;
.super Landroid/database/ContentObserver;
.source "ColorInputMethodPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController$a;->b:Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;

    .line 109
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 110
    iput-object p3, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    const-string p1, "default_input_method"

    .line 114
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 115
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController$a;->b:Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;->access$000(Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;)Lcom/coloros/settings/feature/othersettings/input/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController$a;->a:Landroid/content/Context;

    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController$a;->b:Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;

    invoke-static {p2}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;->access$000(Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;)Lcom/coloros/settings/feature/othersettings/input/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/settings/feature/othersettings/input/c;->c()Ljava/lang/String;

    move-result-object p2

    const-string v0, "current_ime_update"

    .line 1209
    invoke-static {p1, v0, p2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController$a;->b:Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;->access$100(Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;)V

    return-void
.end method
