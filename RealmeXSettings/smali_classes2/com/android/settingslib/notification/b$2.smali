.class final Lcom/android/settingslib/notification/b$2;
.super Ljava/lang/Object;
.source "ZenDurationDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/notification/b;->a(ILandroid/view/View;I)V
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

    .line 192
    iput-object p1, p0, Lcom/android/settingslib/notification/b$2;->b:Lcom/android/settingslib/notification/b;

    iput-object p2, p0, Lcom/android/settingslib/notification/b$2;->a:Lcom/android/settingslib/notification/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 196
    iget-object p1, p0, Lcom/android/settingslib/notification/b$2;->a:Lcom/android/settingslib/notification/b$a;

    iget-object p1, p1, Lcom/android/settingslib/notification/b$a;->a:Landroid/widget/RadioButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method
