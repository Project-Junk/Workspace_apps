.class public final synthetic Lcom/coloros/settings/feature/print/-$$Lambda$ColorPrintSettingsFragment$c$OJTkZePBZ_nlaGzd1JJ5cMiA7Hw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;

.field private final synthetic f$1:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/print/-$$Lambda$ColorPrintSettingsFragment$c$OJTkZePBZ_nlaGzd1JJ5cMiA7Hw;->f$0:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;

    iput-object p2, p0, Lcom/coloros/settings/feature/print/-$$Lambda$ColorPrintSettingsFragment$c$OJTkZePBZ_nlaGzd1JJ5cMiA7Hw;->f$1:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/coloros/settings/feature/print/-$$Lambda$ColorPrintSettingsFragment$c$OJTkZePBZ_nlaGzd1JJ5cMiA7Hw;->f$0:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;

    iget-object v1, p0, Lcom/coloros/settings/feature/print/-$$Lambda$ColorPrintSettingsFragment$c$OJTkZePBZ_nlaGzd1JJ5cMiA7Hw;->f$1:Landroid/content/ComponentName;

    invoke-static {v0, v1, p1, p2}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;->lambda$OJTkZePBZ_nlaGzd1JJ5cMiA7Hw(Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$c;Landroid/content/ComponentName;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
