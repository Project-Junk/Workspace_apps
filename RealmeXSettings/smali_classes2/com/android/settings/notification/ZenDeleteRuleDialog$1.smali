.class final Lcom/android/settings/notification/ZenDeleteRuleDialog$1;
.super Ljava/lang/Object;
.source "ZenDeleteRuleDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenDeleteRuleDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/android/settings/notification/ZenDeleteRuleDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenDeleteRuleDialog;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/settings/notification/ZenDeleteRuleDialog$1;->c:Lcom/android/settings/notification/ZenDeleteRuleDialog;

    iput-object p2, p0, Lcom/android/settings/notification/ZenDeleteRuleDialog$1;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/android/settings/notification/ZenDeleteRuleDialog$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/android/settings/notification/ZenDeleteRuleDialog$1;->a:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    .line 78
    sget-object p1, Lcom/android/settings/notification/ZenDeleteRuleDialog;->a:Lcom/android/settings/notification/ZenDeleteRuleDialog$a;

    iget-object p2, p0, Lcom/android/settings/notification/ZenDeleteRuleDialog$1;->b:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/android/settings/notification/ZenDeleteRuleDialog$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
