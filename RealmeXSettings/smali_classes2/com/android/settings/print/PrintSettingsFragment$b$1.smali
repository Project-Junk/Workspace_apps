.class final Lcom/android/settings/print/PrintSettingsFragment$b$1;
.super Ljava/lang/Object;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroid/print/PrintManager$PrintJobStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/print/PrintSettingsFragment$b;->onStartLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/print/PrintSettingsFragment$b;


# direct methods
.method constructor <init>(Lcom/android/settings/print/PrintSettingsFragment$b;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$b$1;->a:Lcom/android/settings/print/PrintSettingsFragment$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    .locals 0

    .line 439
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$b$1;->a:Lcom/android/settings/print/PrintSettingsFragment$b;

    invoke-static {p1}, Lcom/android/settings/print/PrintSettingsFragment$b;->a(Lcom/android/settings/print/PrintSettingsFragment$b;)V

    return-void
.end method
