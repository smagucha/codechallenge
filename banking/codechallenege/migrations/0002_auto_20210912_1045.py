# Generated by Django 3.1.6 on 2021-09-12 07:45

import codechallenege.validators
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('codechallenege', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='bankdetails',
            name='Bank',
            field=models.CharField(max_length=100, validators=[codechallenege.validators.onlyletters]),
        ),
        migrations.AlterField(
            model_name='bankdetails',
            name='bio',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='biobank', to='codechallenege.bioinfo'),
        ),
        migrations.AlterField(
            model_name='bioinfo',
            name='Homeaddress',
            field=models.CharField(max_length=50, validators=[codechallenege.validators.onlyletters]),
        ),
        migrations.AlterField(
            model_name='bioinfo',
            name='Pin_no',
            field=models.CharField(max_length=50, validators=[codechallenege.validators.onlyisalnum]),
        ),
        migrations.AlterField(
            model_name='bioinfo',
            name='estate',
            field=models.CharField(max_length=100, validators=[codechallenege.validators.onlyletters]),
        ),
        migrations.AlterField(
            model_name='bioinfo',
            name='first_name',
            field=models.CharField(max_length=50, validators=[codechallenege.validators.onlyletters]),
        ),
        migrations.AlterField(
            model_name='bioinfo',
            name='house_no',
            field=models.CharField(max_length=100, validators=[codechallenege.validators.onlyisalnum]),
        ),
        migrations.AlterField(
            model_name='bioinfo',
            name='last_name',
            field=models.CharField(max_length=50, validators=[codechallenege.validators.onlyletters]),
        ),
        migrations.AlterField(
            model_name='bioinfo',
            name='livedthrere',
            field=models.CharField(max_length=100, validators=[codechallenege.validators.onlyisnumeric]),
        ),
        migrations.AlterField(
            model_name='bioinfo',
            name='middle_name',
            field=models.CharField(max_length=50, validators=[codechallenege.validators.onlyletters]),
        ),
        migrations.AlterField(
            model_name='bioinfo',
            name='physical_add',
            field=models.CharField(max_length=100, validators=[codechallenege.validators.onlyletters]),
        ),
        migrations.AlterField(
            model_name='bioinfo',
            name='town',
            field=models.CharField(max_length=100, validators=[codechallenege.validators.onlyletters]),
        ),
        migrations.AlterField(
            model_name='businessdetails',
            name='bio',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='biobiz', to='codechallenege.bioinfo'),
        ),
        migrations.AlterField(
            model_name='businessdetails',
            name='typeofbusiness',
            field=models.CharField(max_length=100, validators=[codechallenege.validators.onlyletters]),
        ),
        migrations.AlterField(
            model_name='employmentdetails',
            name='bio',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='bio', to='codechallenege.bioinfo'),
        ),
        migrations.AlterField(
            model_name='employmentdetails',
            name='designation',
            field=models.CharField(max_length=100, validators=[codechallenege.validators.onlyletters]),
        ),
        migrations.AlterField(
            model_name='employmentdetails',
            name='employer',
            field=models.CharField(max_length=100, validators=[codechallenege.validators.onlyletters]),
        ),
        migrations.AlterField(
            model_name='employmentdetails',
            name='physical_add',
            field=models.CharField(max_length=100, validators=[codechallenege.validators.onlyletters]),
        ),
        migrations.AlterField(
            model_name='loantype',
            name='Purposeofloan',
            field=models.TextField(validators=[codechallenege.validators.onlyletters]),
        ),
        migrations.AlterField(
            model_name='loantype',
            name='bio',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='bioloan', to='codechallenege.bioinfo'),
        ),
        migrations.AlterField(
            model_name='otherloans',
            name='bank',
            field=models.CharField(max_length=100, validators=[codechallenege.validators.onlyletters]),
        ),
        migrations.AlterField(
            model_name='otherloans',
            name='bio',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='bioother', to='codechallenege.bioinfo'),
        ),
    ]
