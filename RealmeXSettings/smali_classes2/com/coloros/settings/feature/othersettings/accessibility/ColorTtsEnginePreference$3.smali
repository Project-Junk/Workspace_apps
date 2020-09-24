.class final Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$3;
.super Ljava/lang/Object;
.source "ColorTtsEnginePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;

.field final synthetic b:Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$3;->b:Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$3;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 99
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$3;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->setChecked(Z)V

    .line 100
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$3;->b:Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->a(Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;)V

    return-void
.end method
