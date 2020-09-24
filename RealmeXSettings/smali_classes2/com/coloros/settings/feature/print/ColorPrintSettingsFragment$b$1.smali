.class final Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$b$1;
.super Ljava/lang/Object;
.source "ColorPrintSettingsFragment.java"

# interfaces
.implements Landroid/print/PrintManager$PrintJobStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$b;->onStartLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$b;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$b;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$b$1;->a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    .locals 0

    .line 416
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$b$1;->a:Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$b;

    invoke-static {p1}, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$b;->a(Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$b;)V

    return-void
.end method
