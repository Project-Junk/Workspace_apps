.class final Lcom/android/settingslib/notification/b$3;
.super Ljava/lang/Object;
.source "ZenDurationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/notification/b;->a(Lcom/android/settingslib/notification/b$a;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/notification/b$a;

.field final synthetic b:Lcom/android/settingslib/notification/b;


# direct methods
.method constructor <init>(Lcom/android/settingslib/notification/b;Lcom/android/settingslib/notification/b$a;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/android/settingslib/notification/b$3;->b:Lcom/android/settingslib/notification/b;

    iput-object p2, p0, Lcom/android/settingslib/notification/b$3;->a:Lcom/android/settingslib/notification/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 225
    iget-object p1, p0, Lcom/android/settingslib/notification/b$3;->a:Lcom/android/settingslib/notification/b$a;

    iget-object p1, p1, Lcom/android/settingslib/notification/b$a;->a:Landroid/widget/RadioButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method
