.class final Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$4;
.super Ljava/lang/Object;
.source "SevenDiracMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;


# direct methods
.method constructor <init>(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 139
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    iget-object v0, v0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->a:Lcom/oppo/a/a/a/c;

    if-nez v0, :cond_0

    .line 140
    invoke-static {}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->n()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onClick(View v),  mService is null"

    invoke-static {p1, v0}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 143
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f1207de

    const v1, 0x7f1207cf

    sparse-switch p1, :sswitch_data_0

    .line 165
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-virtual {p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->g()Z

    move-result p1

    if-nez p1, :cond_4

    .line 166
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-static {p1, v1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->a(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;I)V

    return-void

    .line 162
    :sswitch_0
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    .line 2719
    iget-object v0, p1, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->e:Landroidx/appcompat/app/AppCompatDialog;

    if-nez v0, :cond_1

    .line 2726
    iget-object v0, p1, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->e:Landroidx/appcompat/app/AppCompatDialog;

    if-nez v0, :cond_1

    .line 2727
    new-instance v0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$9;

    invoke-direct {v0, p1, p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$9;-><init>(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;Landroid/content/Context;)V

    .line 2738
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d00b8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a070a

    .line 2739
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcolor/support/v7/widget/Toolbar;

    const v3, 0x7f121514

    .line 2740
    invoke-virtual {v2, v3}, Lcolor/support/v7/widget/Toolbar;->setTitle(I)V

    .line 2741
    invoke-virtual {v2}, Lcolor/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0803f7

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcolor/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2742
    new-instance v3, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$10;

    invoke-direct {v3, p1, v0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$10;-><init>(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;Landroidx/appcompat/app/AppCompatDialog;)V

    invoke-virtual {v2, v3}, Lcolor/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a000b

    .line 2747
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcolor/support/design/widget/ColorAppBarLayout;

    const v3, 0x7f0a0175

    .line 2748
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    const v4, 0x7f0a020e

    .line 2749
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    .line 2750
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const/4 v4, 0x1

    .line 2752
    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 2753
    new-instance v5, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$11;

    invoke-direct {v5, p1, v2, v3}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$11;-><init>(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;Lcolor/support/design/widget/ColorAppBarLayout;Landroid/widget/ListView;)V

    invoke-virtual {v2, v5}, Lcolor/support/design/widget/ColorAppBarLayout;->post(Ljava/lang/Runnable;)Z

    .line 2762
    new-instance v2, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$2;

    sget-object v5, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->d:[Ljava/lang/String;

    invoke-direct {v2, p1, p1, v5, v3}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$2;-><init>(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;Landroid/content/Context;[Ljava/lang/Object;Landroid/widget/ListView;)V

    .line 2780
    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2781
    new-instance v2, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$3;

    invoke-direct {v2, p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$3;-><init>(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;)V

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2798
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 2799
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    .line 2800
    iput-object v0, p1, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->e:Landroidx/appcompat/app/AppCompatDialog;

    .line 2722
    :cond_1
    iget-object p1, p1, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->e:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->show()V

    return-void

    .line 145
    :sswitch_1
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-virtual {p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->f()Z

    move-result p1

    if-nez p1, :cond_6

    .line 146
    invoke-static {}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->g()Z

    move-result p1

    if-nez p1, :cond_2

    .line 147
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-static {p1, v1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->a(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;I)V

    return-void

    .line 148
    :cond_2
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-virtual {p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->d()Z

    move-result p1

    if-nez p1, :cond_6

    .line 149
    invoke-static {}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->n()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onClick: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-virtual {v2}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-static {p1, v0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->a(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;I)V

    return-void

    .line 155
    :sswitch_2
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->a(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;)Lcom/color/support/widget/ColorSwitch;

    move-result-object p1

    invoke-virtual {p1}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 156
    invoke-static {}, Lcom/coloros/partners/dirac/a/a;->b()V

    return-void

    .line 158
    :cond_3
    invoke-static {}, Lcom/coloros/partners/dirac/a/a;->b()V

    return-void

    .line 167
    :cond_4
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-static {p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->b(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;)Lcom/oppo/a/a/a/b$a;

    move-result-object p1

    sget-object v1, Lcom/oppo/a/a/a/b$a;->c:Lcom/oppo/a/a/a/b$a;

    if-ne p1, v1, :cond_5

    .line 168
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    const v0, 0x7f1207d1

    invoke-static {p1, v0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->a(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;I)V

    return-void

    .line 169
    :cond_5
    invoke-static {}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->g()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-virtual {p1}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->d()Z

    move-result p1

    if-nez p1, :cond_6

    .line 170
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$4;->a:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    invoke-static {p1, v0}, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;->a(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;I)V

    :cond_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a01f9 -> :sswitch_2
        0x7f0a01fa -> :sswitch_1
        0x7f0a023f -> :sswitch_0
    .end sparse-switch
.end method
