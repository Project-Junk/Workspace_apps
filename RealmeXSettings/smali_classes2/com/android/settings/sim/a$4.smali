.class final Lcom/android/settings/sim/a$4;
.super Ljava/lang/Object;
.source "SimPreferenceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/sim/a;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/a;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/settings/sim/a$4;->a:Lcom/android/settings/sim/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 187
    iget-object p1, p0, Lcom/android/settings/sim/a$4;->a:Lcom/android/settings/sim/a;

    invoke-virtual {p1}, Lcom/android/settings/sim/a;->finish()V

    return-void
.end method
