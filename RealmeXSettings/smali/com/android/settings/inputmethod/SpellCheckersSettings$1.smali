.class final Lcom/android/settings/inputmethod/SpellCheckersSettings$1;
.super Ljava/lang/Object;
.source "SpellCheckersSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/SpellCheckersSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/textservice/SpellCheckerInfo;

.field final synthetic b:Lcom/android/settings/inputmethod/SpellCheckersSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;->b:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    iput-object p2, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;->a:Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 221
    :cond_0
    invoke-static {p2}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->a(I)I

    move-result p2

    .line 222
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;->a:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v0, p2}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result p2

    .line 225
    :goto_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;->b:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-static {v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->a(Lcom/android/settings/inputmethod/SpellCheckersSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "selected_spell_checker_subtype"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 234
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 235
    iget-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;->b:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-static {p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->b(Lcom/android/settings/inputmethod/SpellCheckersSettings;)V

    return-void
.end method
