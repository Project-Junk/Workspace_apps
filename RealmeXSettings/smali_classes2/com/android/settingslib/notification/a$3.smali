.class final Lcom/android/settingslib/notification/a$3;
.super Ljava/lang/Object;
.source "EnableZenModeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/notification/a;->a(Lcom/android/settingslib/notification/a$a;Landroid/view/View;Landroid/service/notification/Condition;ZILandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/notification/a$a;

.field final synthetic b:Lcom/android/settingslib/notification/a;


# direct methods
.method constructor <init>(Lcom/android/settingslib/notification/a;Lcom/android/settingslib/notification/a$a;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/android/settingslib/notification/a$3;->b:Lcom/android/settingslib/notification/a;

    iput-object p2, p0, Lcom/android/settingslib/notification/a$3;->a:Lcom/android/settingslib/notification/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 358
    iget-object p1, p0, Lcom/android/settingslib/notification/a$3;->a:Lcom/android/settingslib/notification/a$a;

    iget-object p1, p1, Lcom/android/settingslib/notification/a$a;->a:Landroid/widget/RadioButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method
