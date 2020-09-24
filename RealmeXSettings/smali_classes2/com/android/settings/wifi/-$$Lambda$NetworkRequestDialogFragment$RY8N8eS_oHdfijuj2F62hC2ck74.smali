.class public final synthetic Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$RY8N8eS_oHdfijuj2F62hC2ck74;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

.field private final synthetic f$1:Lcolor/support/v7/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Lcolor/support/v7/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$RY8N8eS_oHdfijuj2F62hC2ck74;->f$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    iput-object p2, p0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$RY8N8eS_oHdfijuj2F62hC2ck74;->f$1:Lcolor/support/v7/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$RY8N8eS_oHdfijuj2F62hC2ck74;->f$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    iget-object v1, p0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$RY8N8eS_oHdfijuj2F62hC2ck74;->f$1:Lcolor/support/v7/app/AlertDialog;

    invoke-static {v0, v1, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->lambda$RY8N8eS_oHdfijuj2F62hC2ck74(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Lcolor/support/v7/app/AlertDialog;Landroid/content/DialogInterface;)V

    return-void
.end method
