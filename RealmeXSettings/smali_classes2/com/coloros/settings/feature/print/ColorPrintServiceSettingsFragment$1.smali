.class final Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$1;
.super Ljava/lang/Object;
.source "ColorPrintServiceSettingsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;)V
    .locals 0

    .line 644
    iput-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$1;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 647
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$1;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->a(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;)Lcom/coloros/settings/feature/print/ProgressCategory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/feature/print/ProgressCategory;->removeAll()V

    .line 648
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$1;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->f(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;)V

    return-void
.end method
