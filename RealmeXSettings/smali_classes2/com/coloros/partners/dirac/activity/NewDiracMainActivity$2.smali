.class final Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$2;
.super Ljava/lang/Object;
.source "NewDiracMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;


# direct methods
.method constructor <init>(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$2;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$2;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    iget-object v0, v0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    if-nez v0, :cond_0

    .line 138
    invoke-static {}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->n()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onClick(View v),  mService is null"

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 141
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f1207de

    const v1, 0x7f1207cf

    sparse-switch p1, :sswitch_data_0

    .line 164
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$2;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-virtual {p1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->f()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->g()Z

    move-result p1

    if-nez p1, :cond_3

    .line 165
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$2;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-static {p1, v1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;I)V

    return-void

    .line 161
    :sswitch_0
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$2;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->b(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)V

    return-void

    .line 143
    :sswitch_1
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$2;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-virtual {p1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->f()Z

    move-result p1

    if-nez p1, :cond_5

    .line 144
    invoke-static {}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->g()Z

    move-result p1

    if-nez p1, :cond_1

    .line 145
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$2;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-static {p1, v1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;I)V

    return-void

    .line 146
    :cond_1
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$2;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-virtual {p1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d()Z

    move-result p1

    if-nez p1, :cond_5

    .line 149
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$2;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-static {p1, v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;I)V

    return-void

    .line 154
    :sswitch_2
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$2;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)Lcom/color/support/widget/ColorSwitch;

    move-result-object p1

    invoke-virtual {p1}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 155
    invoke-static {}, Lcom/coloros/partners/dirac/a/a;->b()V

    return-void

    .line 157
    :cond_2
    invoke-static {}, Lcom/coloros/partners/dirac/a/a;->b()V

    return-void

    .line 166
    :cond_3
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$2;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->c(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;)Lcom/oppo/a/a/a/b$a;

    move-result-object p1

    sget-object v1, Lcom/oppo/a/a/a/b$a;->c:Lcom/oppo/a/a/a/b$a;

    if-ne p1, v1, :cond_4

    .line 167
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$2;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    const v0, 0x7f1207d1

    invoke-static {p1, v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;I)V

    return-void

    .line 168
    :cond_4
    invoke-static {}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->g()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$2;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-virtual {p1}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->d()Z

    move-result p1

    if-nez p1, :cond_5

    .line 169
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity$2;->a:Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;

    invoke-static {p1, v0}, Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;->a(Lcom/coloros/partners/dirac/activity/NewDiracMainActivity;I)V

    :cond_5
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a01f9 -> :sswitch_2
        0x7f0a01fa -> :sswitch_1
        0x7f0a073d -> :sswitch_0
    .end sparse-switch
.end method
