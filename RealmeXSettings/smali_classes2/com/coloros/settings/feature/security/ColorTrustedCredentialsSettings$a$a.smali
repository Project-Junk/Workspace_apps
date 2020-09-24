.class final Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;
.super Lcom/android/settings/TrustedCredentialsSettings$a$a;
.source "ColorTrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic c:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;

.field private d:Landroid/widget/LinearLayout;

.field private e:Lcom/coloros/settings/widget/EmptyListView;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;->c:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$a$a;-><init>(Lcom/android/settings/TrustedCredentialsSettings$a;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/settings/TrustedCredentialsSettings$c;",
            ">;>;)V"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;->c:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;

    iget-object v0, v0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 330
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    .line 333
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_0

    .line 335
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v3, v5

    .line 337
    :cond_0
    iget-object v5, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;->c:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;

    iget-object v5, v5, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;->a:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;->c:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;

    .line 1302
    iget-object p1, p1, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;->c:Lcom/android/settings/TrustedCredentialsSettings$e;

    .line 339
    invoke-virtual {p1}, Lcom/android/settings/TrustedCredentialsSettings$e;->notifyDataSetChanged()V

    .line 340
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;->d:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 341
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;->a:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    if-lez v3, :cond_2

    .line 344
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;->e:Lcom/coloros/settings/widget/EmptyListView;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/EmptyListView;->setVisibility(I)V

    .line 345
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;->a:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 347
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;->e:Lcom/coloros/settings/widget/EmptyListView;

    iget-object v2, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;->c:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;

    iget-object v2, v2, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;->e:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;

    const v3, 0x7f120fcd

    invoke-virtual {v2, v3}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/coloros/settings/widget/EmptyListView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;->e:Lcom/coloros/settings/widget/EmptyListView;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/EmptyListView;->setVisibility(I)V

    .line 349
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 351
    :goto_1
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;->c:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;

    iget-object p1, p1, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;->e:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->c(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 352
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;->a()V

    return-void
.end method

.method public final varargs a([Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method public final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 307
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;->a(Landroid/util/SparseArray;)V

    return-void
.end method

.method public final onPreExecute()V
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;->c:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;

    iget-object v0, v0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;->e:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;

    invoke-static {v0}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->b(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;->c:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;

    iget-object v1, v1, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;->b:Lcom/android/settings/TrustedCredentialsSettings$f;

    iget v1, v1, Lcom/android/settings/TrustedCredentialsSettings$f;->c:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;->d:Landroid/widget/LinearLayout;

    .line 314
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;->c:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;

    iget-object v0, v0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;->e:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;

    invoke-static {v0}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->b(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;->c:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;

    iget-object v1, v1, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;->b:Lcom/android/settings/TrustedCredentialsSettings$f;

    iget v1, v1, Lcom/android/settings/TrustedCredentialsSettings$f;->d:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;->a:Landroid/view/View;

    .line 315
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;->c:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;

    iget-object v0, v0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;->e:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;

    invoke-static {v0}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->b(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;->c:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;

    iget-object v1, v1, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;->b:Lcom/android/settings/TrustedCredentialsSettings$f;

    iget v1, v1, Lcom/android/settings/TrustedCredentialsSettings$f;->f:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/EmptyListView;

    iput-object v0, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;->e:Lcom/coloros/settings/widget/EmptyListView;

    .line 316
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;->e:Lcom/coloros/settings/widget/EmptyListView;

    iget-object v1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;->c:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;

    iget-object v1, v1, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;->e:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;

    const v2, 0x7f120fcd

    invoke-virtual {v1, v2}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0808ca

    invoke-virtual {v0, v2, v1}, Lcom/coloros/settings/widget/EmptyListView;->a(ILjava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;->e:Lcom/coloros/settings/widget/EmptyListView;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/EmptyListView;->setVisibility(I)V

    return-void
.end method

.method public final bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
