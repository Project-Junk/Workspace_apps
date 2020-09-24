.class public final Lcom/coloros/settings/ringtone/music/c;
.super Landroid/widget/BaseAdapter;
.source "MusicFilePickerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/ringtone/music/c$a;
    }
.end annotation


# instance fields
.field a:Z

.field b:I

.field c:I

.field d:Ljava/lang/String;

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settings/ringtone/b;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Landroid/util/SparseBooleanArray;

.field private h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/coloros/settings/ringtone/music/c;->b:I

    .line 64
    iput-object p1, p0, Lcom/coloros/settings/ringtone/music/c;->h:Landroid/content/Context;

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/coloros/settings/ringtone/music/c;->a:Z

    return-void
.end method

.method private b(I)Lcom/coloros/settings/ringtone/b;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/c;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/ringtone/b;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/c;->g:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    return-void

    .line 93
    :cond_0
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/ringtone/music/c;->g:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 99
    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/coloros/settings/ringtone/music/c;->e:Ljava/util/ArrayList;

    .line 100
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/music/c;->a()V

    .line 101
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/music/c;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(I)Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/c;->g:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public final b()V
    .locals 2

    .line 240
    iget v0, p0, Lcom/coloros/settings/ringtone/music/c;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/c;->g:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/music/c;->notifyDataSetChanged()V

    return-void
.end method

.method public final getCount()I
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/c;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/coloros/settings/ringtone/music/c;->b(I)Lcom/coloros/settings/ringtone/b;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 p3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_2

    .line 123
    iget-object p2, p0, Lcom/coloros/settings/ringtone/music/c;->h:Landroid/content/Context;

    const v2, 0x7f0d01e2

    invoke-static {p2, v2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1191
    new-instance v2, Lcom/coloros/settings/ringtone/music/c$a;

    invoke-direct {v2}, Lcom/coloros/settings/ringtone/music/c$a;-><init>()V

    const v3, 0x7f0a0614

    .line 1192
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/coloros/settings/ringtone/music/c$a;->a:Landroid/widget/ImageView;

    const v3, 0x7f0a0228

    .line 1193
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/coloros/settings/ringtone/music/c$a;->b:Landroid/widget/ImageView;

    const v3, 0x7f0a0615

    .line 1194
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/coloros/settings/ringtone/music/c$a;->c:Landroid/widget/TextView;

    const v3, 0x7f0a0612

    .line 1195
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, v2, Lcom/coloros/settings/ringtone/music/c$a;->d:Landroid/widget/RadioButton;

    .line 1197
    iget v3, p0, Lcom/coloros/settings/ringtone/music/c;->c:I

    if-eq v3, v1, :cond_0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    :cond_0
    const v3, 0x7f0a03cb

    .line 1198
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1201
    :cond_1
    iget-object v3, v2, Lcom/coloros/settings/ringtone/music/c$a;->d:Landroid/widget/RadioButton;

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 1202
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/ringtone/music/c$a;

    .line 129
    :goto_0
    invoke-direct {p0, p1}, Lcom/coloros/settings/ringtone/music/c;->b(I)Lcom/coloros/settings/ringtone/b;

    move-result-object v3

    .line 130
    iget-object v4, v2, Lcom/coloros/settings/ringtone/music/c$a;->a:Landroid/widget/ImageView;

    .line 133
    iget-object v5, p0, Lcom/coloros/settings/ringtone/music/c;->f:Ljava/util/HashMap;

    if-eqz v5, :cond_4

    .line 134
    invoke-virtual {v3}, Lcom/coloros/settings/ringtone/b;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 136
    iget-object v6, v2, Lcom/coloros/settings/ringtone/music/c$a;->c:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 138
    :cond_3
    iget-object v5, v2, Lcom/coloros/settings/ringtone/music/c$a;->c:Landroid/widget/TextView;

    .line 2135
    invoke-virtual {v3}, Lcom/coloros/settings/ringtone/b;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/coloros/settings/ringtone/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 138
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 141
    :cond_4
    iget-object v5, v2, Lcom/coloros/settings/ringtone/music/c$a;->c:Landroid/widget/TextView;

    .line 3135
    invoke-virtual {v3}, Lcom/coloros/settings/ringtone/b;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/coloros/settings/ringtone/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 141
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :goto_1
    invoke-virtual {v3}, Lcom/coloros/settings/ringtone/b;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 146
    iget-object v6, p0, Lcom/coloros/settings/ringtone/music/c;->d:Ljava/lang/String;

    if-eqz v6, :cond_5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 147
    iget-object v6, p0, Lcom/coloros/settings/ringtone/music/c;->g:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 148
    iput-object p3, p0, Lcom/coloros/settings/ringtone/music/c;->d:Ljava/lang/String;

    const-string p3, "msg_handler_picker_button"

    .line 149
    invoke-static {v1, p3}, Lcom/coloros/settings/ringtone/d;->a(ILjava/lang/String;)V

    .line 3139
    :cond_5
    iget p3, v3, Lcom/coloros/settings/ringtone/b;->a:I

    if-ne p3, v1, :cond_6

    .line 154
    invoke-static {v5}, Lcom/coloros/settings/ringtone/h;->b(Ljava/lang/String;)I

    move-result p3

    :cond_6
    const/16 v1, 0x8

    const/high16 v3, 0x60000000

    if-ne p3, v3, :cond_7

    .line 157
    iget-object v6, v2, Lcom/coloros/settings/ringtone/music/c$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 159
    :cond_7
    iget-object v6, v2, Lcom/coloros/settings/ringtone/music/c$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 162
    iget-boolean v5, p0, Lcom/coloros/settings/ringtone/music/c;->a:Z

    const/high16 v6, 0x8000000

    const/high16 v7, 0x4000000

    if-eqz v5, :cond_9

    if-eq p3, v3, :cond_8

    if-eq p3, v1, :cond_8

    if-eq p3, v6, :cond_8

    if-ne p3, v7, :cond_9

    :cond_8
    iget v5, p0, Lcom/coloros/settings/ringtone/music/c;->b:I

    if-eq v5, p1, :cond_c

    :cond_9
    const v5, 0x7f080676

    if-ne p3, v3, :cond_a

    .line 170
    iget-object p3, p0, Lcom/coloros/settings/ringtone/music/c;->h:Landroid/content/Context;

    invoke-virtual {p3, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {v4, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_a
    if-eq p3, v1, :cond_b

    if-eq p3, v7, :cond_b

    if-eq p3, v6, :cond_b

    .line 180
    iget-object p3, p0, Lcom/coloros/settings/ringtone/music/c;->h:Landroid/content/Context;

    const v1, 0x7f080682

    invoke-virtual {p3, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {v4, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 176
    :cond_b
    iget-object p3, p0, Lcom/coloros/settings/ringtone/music/c;->h:Landroid/content/Context;

    invoke-virtual {p3, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {v4, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3207
    :cond_c
    :goto_3
    iget-object p3, v2, Lcom/coloros/settings/ringtone/music/c$a;->d:Landroid/widget/RadioButton;

    .line 3208
    invoke-virtual {p3, p1}, Landroid/widget/RadioButton;->setId(I)V

    .line 3209
    iget-object v1, p0, Lcom/coloros/settings/ringtone/music/c;->g:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 3210
    iget p1, p0, Lcom/coloros/settings/ringtone/music/c;->c:I

    if-lez p1, :cond_d

    .line 3211
    invoke-virtual {p3, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_4

    :cond_d
    const/4 p1, 0x4

    .line 3213
    invoke-virtual {p3, p1}, Landroid/widget/RadioButton;->setVisibility(I)V

    :goto_4
    return-object p2
.end method
