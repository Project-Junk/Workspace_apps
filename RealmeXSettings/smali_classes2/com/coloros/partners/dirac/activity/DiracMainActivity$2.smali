.class final Lcom/coloros/partners/dirac/activity/DiracMainActivity$2;
.super Ljava/lang/Object;
.source "DiracMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/partners/dirac/activity/DiracMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;


# direct methods
.method constructor <init>(Lcom/coloros/partners/dirac/activity/DiracMainActivity;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$2;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$2;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    iget-object v0, v0, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    if-nez v0, :cond_0

    .line 125
    invoke-static {}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->n()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onClick(View v),  mService is null"

    invoke-static {p1, v0}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 128
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f1207de

    const v1, 0x7f1207cf

    packed-switch p1, :pswitch_data_0

    .line 148
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$2;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-virtual {p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->f()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->g()Z

    move-result p1

    if-nez p1, :cond_3

    .line 149
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$2;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-static {p1, v1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->a(Lcom/coloros/partners/dirac/activity/DiracMainActivity;I)V

    return-void

    .line 130
    :pswitch_0
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$2;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-virtual {p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->f()Z

    move-result p1

    if-nez p1, :cond_5

    .line 131
    invoke-static {}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->g()Z

    move-result p1

    if-nez p1, :cond_1

    .line 132
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$2;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-static {p1, v1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->a(Lcom/coloros/partners/dirac/activity/DiracMainActivity;I)V

    return-void

    .line 133
    :cond_1
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$2;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-virtual {p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d()Z

    move-result p1

    if-nez p1, :cond_5

    .line 136
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$2;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-static {p1, v0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->a(Lcom/coloros/partners/dirac/activity/DiracMainActivity;I)V

    return-void

    .line 141
    :pswitch_1
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$2;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->a(Lcom/coloros/partners/dirac/activity/DiracMainActivity;)Lcom/color/support/widget/ColorSwitch;

    move-result-object p1

    invoke-virtual {p1}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 142
    invoke-static {}, Lcom/coloros/partners/dirac/a/a;->b()V

    return-void

    .line 144
    :cond_2
    invoke-static {}, Lcom/coloros/partners/dirac/a/a;->b()V

    return-void

    .line 150
    :cond_3
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$2;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->b(Lcom/coloros/partners/dirac/activity/DiracMainActivity;)Lcom/oppo/a/a/a/b$a;

    move-result-object p1

    sget-object v1, Lcom/oppo/a/a/a/b$a;->c:Lcom/oppo/a/a/a/b$a;

    if-ne p1, v1, :cond_4

    .line 151
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$2;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    const v0, 0x7f1207d1

    invoke-static {p1, v0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->a(Lcom/coloros/partners/dirac/activity/DiracMainActivity;I)V

    return-void

    .line 152
    :cond_4
    invoke-static {}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->g()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$2;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-virtual {p1}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->d()Z

    move-result p1

    if-nez p1, :cond_5

    .line 153
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/DiracMainActivity$2;->a:Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-static {p1, v0}, Lcom/coloros/partners/dirac/activity/DiracMainActivity;->a(Lcom/coloros/partners/dirac/activity/DiracMainActivity;I)V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a01f9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
