.class final Lcom/android/settingslib/notification/a$2;
.super Ljava/lang/Object;
.source "EnableZenModeDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/notification/a;->a(Landroid/service/notification/Condition;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/notification/a$a;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Lcom/android/settingslib/notification/a;


# direct methods
.method constructor <init>(Lcom/android/settingslib/notification/a;Lcom/android/settingslib/notification/a$a;Landroid/net/Uri;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/android/settingslib/notification/a$2;->c:Lcom/android/settingslib/notification/a;

    iput-object p2, p0, Lcom/android/settingslib/notification/a$2;->a:Lcom/android/settingslib/notification/a$a;

    iput-object p3, p0, Lcom/android/settingslib/notification/a$2;->b:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_1

    .line 207
    iget-object p1, p0, Lcom/android/settingslib/notification/a$2;->a:Lcom/android/settingslib/notification/a$a;

    iget-object p1, p1, Lcom/android/settingslib/notification/a$a;->a:Landroid/widget/RadioButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 208
    invoke-static {}, Lcom/android/settingslib/notification/a;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onCheckedChanged "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settingslib/notification/a$2;->b:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EnableZenModeDialog"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/notification/a$2;->c:Lcom/android/settingslib/notification/a;

    iget-object p1, p1, Lcom/android/settingslib/notification/a;->c:Landroid/content/Context;

    const/16 p2, 0xa4

    invoke-static {p1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 211
    iget-object p1, p0, Lcom/android/settingslib/notification/a$2;->c:Lcom/android/settingslib/notification/a;

    iget-object p2, p0, Lcom/android/settingslib/notification/a$2;->a:Lcom/android/settingslib/notification/a$a;

    iget-object p2, p2, Lcom/android/settingslib/notification/a$a;->e:Landroid/service/notification/Condition;

    invoke-static {p1, p2}, Lcom/android/settingslib/notification/a;->c(Lcom/android/settingslib/notification/a;Landroid/service/notification/Condition;)V

    :cond_1
    return-void
.end method
